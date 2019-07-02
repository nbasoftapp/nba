using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AMEXCHANGE
{
    public partial class JourneyPlan : System.Web.UI.Page
    {
        NacosadbDataContext datacontext = new NacosadbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string role = Session["Role"] as string;
            if (role != "Administrator")
                Response.Redirect("Login.aspx");

            getNameOfGirl();
            viewJourneyPlan();
        }

        protected void getNameOfGirl()
        {
            var nameOfgirl = datacontext.UserRegistrations.Where(n => n.ID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();
            lblNameOfGirl.Text = nameOfgirl.Name + " " + nameOfgirl.Surname;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (ddrHIVTesting.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select HIV testing!";
            }
            else if (drHIVSelfScreening.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select HIV Selfscreening!";
            }
            else if (drCondomsSTIScreening.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select Condoms STI Screening!";
            }
            else if (drPregnancyTesting.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select Pregnancy testing!";
            }
            else if (drEmergencyContraception.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select Emergency Contraception!";
            }
            else if (ddrVendingMachines.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select peer education!";
            }
            else if (drPeerEducation.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select peer education!";
            }
            else if (ddrComprehensiveSexualityEducation.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select comprehensive sexuality education!";
            }
            else if (ddrIndividualAndGroupSupport.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select individual and group support!";
            }
            else if (ddrPrepDemandCreation.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select SRH knowledge!";
            }
            else if (ddrSRHKnowledge.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select SRH knowledge!";
            }
            else if (ddrMentalHealthSupport.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select mental health support!";
            }
            else if (ddrSupportAccessSocialGrants.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select support access social grants!";
            }
            else if (ddrDignityPacks.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select dignity packs!";
            }
            else if (ddrAcademicSupport.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select academic support!";
            }
            else if (ddrReturnToSchoolSupport.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select return to school support!";
            }
            else if (ddrECDVouchers.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select ECD Vouchers!";
            }
            else if (ddrEconomicStrengthening.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select economic strengthening!";
            }
            else if (ddrWholeSchoolDevelopment.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select whole school development!";
            }
            else if (ddrMenDialoguesGenderNorms.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select men dialoques gender norms!";
            }
            else if (ddrYouthLeadership.SelectedIndex == 0)
            {
                divError.Visible = true;
                txtError.InnerHtml = "Please select youth leadership!";
            }
            else
            {
                if (drSelectionCriteria.SelectedIndex == 0)
                {
                    divError.Visible = true;
                    txtError.InnerHtml = "Please Select View Or Update!";
                }
                else
                {
                    Journey journeyPlan = datacontext.Journeys.Where(n => n.regID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();

                    if (journeyPlan.regID == null)
                    {
                        journeyPlan.regID = int.Parse(Request.QueryString["Id"]);
                        datacontext.Journeys.InsertOnSubmit(journeyPlan);
                        datacontext.SubmitChanges();
                    }
                    else
                    {
                        var regid = datacontext.UserRegistrations.Where(n => n.ID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();

                        journeyPlan.regID = regid.ID;
                        journeyPlan.HIVTesting = ddrHIVTesting.SelectedItem.Text;
                        journeyPlan.HIVSelfScreening = drHIVSelfScreening.SelectedItem.Text;
                        journeyPlan.CondomsSTIScreening = drCondomsSTIScreening.SelectedItem.Text;
                        journeyPlan.PregnancyTesting = drPregnancyTesting.SelectedItem.Text;
                        journeyPlan.EmergencyContraception = drEmergencyContraception.SelectedItem.Text;
                        journeyPlan.VendingMachines = ddrVendingMachines.SelectedItem.Text;
                        journeyPlan.PeerEducation = drPeerEducation.SelectedItem.Text;
                        journeyPlan.ComprehensiveSexualityEducation = ddrComprehensiveSexualityEducation.SelectedItem.Text;
                        journeyPlan.IndividualAndGroupSupport = ddrIndividualAndGroupSupport.SelectedItem.Text;
                        journeyPlan.PrepDemandCreation = ddrPrepDemandCreation.SelectedItem.Text;
                        journeyPlan.SRHKnowledge = ddrSRHKnowledge.SelectedItem.Text;
                        journeyPlan.MentalHealthSupport = ddrMentalHealthSupport.SelectedItem.Text;
                        journeyPlan.SupportAccessSocialGrants = ddrSupportAccessSocialGrants.SelectedItem.Text;
                        journeyPlan.DignityPacks = ddrDignityPacks.SelectedItem.Text;
                        journeyPlan.AcademicSupport = ddrAcademicSupport.SelectedItem.Text;
                        journeyPlan.ReturnToSchoolSupport = ddrReturnToSchoolSupport.SelectedItem.Text;
                        journeyPlan.ECDVouchers = ddrECDVouchers.SelectedItem.Text;
                        journeyPlan.EconomicStrengthening = ddrEconomicStrengthening.SelectedItem.Text;
                        journeyPlan.WholeSchoolDevelopment = ddrWholeSchoolDevelopment.SelectedItem.Text;
                        journeyPlan.MenDialoguesGenderNorms = ddrMenDialoguesGenderNorms.SelectedItem.Text;
                        journeyPlan.YouthLeadership = ddrYouthLeadership.SelectedItem.Text;

                        datacontext.SubmitChanges();
                        divSuccess.Visible = false;
                        txtSuccess.InnerHtml = "Journey Plan Successfully Updated";
                    }
                }
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("~/dep.aspx"));
        }

        protected void viewJourneyPlan()
        {
            if (drSelectionCriteria.SelectedIndex == 1)
            {
                btnSave.Enabled = false;

                var assessment = datacontext.Journeys.Where(n => n.regID == int.Parse(Request.QueryString["Id"])).FirstOrDefault();
                if (assessment != null)
                {

                    ddrHIVTesting.SelectedIndex = ddrHIVTesting.Items.IndexOf(ddrHIVTesting.Items.FindByText(assessment.HIVTesting));
                    ddrHIVTesting.Enabled = false;

                    drHIVSelfScreening.SelectedIndex = drHIVSelfScreening.Items.IndexOf(drHIVSelfScreening.Items.FindByText(assessment.HIVSelfScreening));
                    drHIVSelfScreening.Enabled = false;

                    drCondomsSTIScreening.SelectedIndex = drCondomsSTIScreening.Items.IndexOf(drCondomsSTIScreening.Items.FindByText(assessment.CondomsSTIScreening));
                    drCondomsSTIScreening.Enabled = false;

                    drPregnancyTesting.SelectedIndex = drPregnancyTesting.Items.IndexOf(drPregnancyTesting.Items.FindByText(assessment.PregnancyTesting));
                    drPregnancyTesting.Enabled = false;

                    drEmergencyContraception.SelectedIndex = drEmergencyContraception.Items.IndexOf(drEmergencyContraception.Items.FindByText(assessment.EmergencyContraception));
                    drEmergencyContraception.Enabled = false;

                    ddrVendingMachines.SelectedIndex = ddrVendingMachines.Items.IndexOf(ddrVendingMachines.Items.FindByText(assessment.VendingMachines));
                    ddrVendingMachines.Enabled = false;

                    drPeerEducation.SelectedIndex = drPeerEducation.Items.IndexOf(drPeerEducation.Items.FindByText(assessment.PeerEducation));
                    drPeerEducation.Enabled = false;

                    ddrComprehensiveSexualityEducation.SelectedIndex = ddrComprehensiveSexualityEducation.Items.IndexOf(ddrComprehensiveSexualityEducation.Items.FindByText(assessment.ComprehensiveSexualityEducation));
                    ddrComprehensiveSexualityEducation.Enabled = false;

                    ddrIndividualAndGroupSupport.SelectedIndex = ddrIndividualAndGroupSupport.Items.IndexOf(ddrIndividualAndGroupSupport.Items.FindByText(assessment.IndividualAndGroupSupport));
                    ddrIndividualAndGroupSupport.Enabled = false;


                    ddrPrepDemandCreation.SelectedIndex = ddrPrepDemandCreation.Items.IndexOf(ddrPrepDemandCreation.Items.FindByText(assessment.PrepDemandCreation));
                    ddrPrepDemandCreation.Enabled = false;

                    ddrSRHKnowledge.SelectedIndex = ddrSRHKnowledge.Items.IndexOf(ddrSRHKnowledge.Items.FindByText(assessment.SRHKnowledge));
                    ddrSRHKnowledge.Enabled = false;

                    ddrMentalHealthSupport.SelectedIndex = ddrMentalHealthSupport.Items.IndexOf(ddrMentalHealthSupport.Items.FindByText(assessment.MentalHealthSupport));
                    ddrMentalHealthSupport.Enabled = false;

                    ddrSupportAccessSocialGrants.SelectedIndex = ddrSupportAccessSocialGrants.Items.IndexOf(ddrSupportAccessSocialGrants.Items.FindByText(assessment.SupportAccessSocialGrants));
                    ddrSupportAccessSocialGrants.Enabled = false;

                    ddrDignityPacks.SelectedIndex = ddrDignityPacks.Items.IndexOf(ddrDignityPacks.Items.FindByText(assessment.DignityPacks));
                    ddrDignityPacks.Enabled = false;

                    ddrAcademicSupport.SelectedIndex = ddrAcademicSupport.Items.IndexOf(ddrAcademicSupport.Items.FindByText(assessment.AcademicSupport));
                    ddrAcademicSupport.Enabled = false;

                    ddrReturnToSchoolSupport.SelectedIndex = ddrReturnToSchoolSupport.Items.IndexOf(ddrReturnToSchoolSupport.Items.FindByText(assessment.ReturnToSchoolSupport));
                    ddrReturnToSchoolSupport.Enabled = false;

                    ddrECDVouchers.SelectedIndex = ddrECDVouchers.Items.IndexOf(ddrECDVouchers.Items.FindByText(assessment.ECDVouchers));
                    ddrECDVouchers.Enabled = false;

                    ddrEconomicStrengthening.SelectedIndex = ddrEconomicStrengthening.Items.IndexOf(ddrEconomicStrengthening.Items.FindByText(assessment.EconomicStrengthening));
                    ddrEconomicStrengthening.Enabled = false;

                    ddrWholeSchoolDevelopment.SelectedIndex = ddrWholeSchoolDevelopment.Items.IndexOf(ddrWholeSchoolDevelopment.Items.FindByText(assessment.WholeSchoolDevelopment));
                    ddrWholeSchoolDevelopment.Enabled = false;

                    ddrMenDialoguesGenderNorms.SelectedIndex = ddrMenDialoguesGenderNorms.Items.IndexOf(ddrMenDialoguesGenderNorms.Items.FindByText(assessment.MenDialoguesGenderNorms));
                    ddrMenDialoguesGenderNorms.Enabled = false;

                    ddrYouthLeadership.SelectedIndex = ddrYouthLeadership.Items.IndexOf(ddrYouthLeadership.Items.FindByText(assessment.YouthLeadership));
                    ddrYouthLeadership.Enabled = false;

                    btnSave.Enabled = false;
                }
                else
                {
                    divError.Visible = true;
                    txtError.InnerHtml = "Journey Plan not completed!";
                } 
            }
            else
            {
                btnSave.Enabled = true;
            }
        }

     


    }
}