using System;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using Microsoft.SharePoint;

namespace PPR.Taksomotor.PortalWebTemplate.Features.PPR.Taksomotor.PortalWebTemplateFeature
{
    /// <summary>
    /// This class handles events raised during feature activation, deactivation, installation, uninstallation, and upgrade.
    /// </summary>
    /// <remarks>
    /// The GUID attached to this class may be used during packaging and should not be modified.
    /// </remarks>

    [Guid("84a8cb05-dbd0-490f-b118-8d3bc168a067")]
    public class PPRTaksomotorEventReceiver : SPFeatureReceiver
    {
        // Uncomment the method below to handle the event raised after a feature has been activated.

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            var site = (SPSite)properties.Feature.Parent;
            site.RootWeb.MasterUrl = site.RootWeb.ServerRelativeUrl + "_catalogs/masterpage/TaksomotorSystem.master";
            site.RootWeb.CustomMasterUrl = site.RootWeb.ServerRelativeUrl + "_catalogs/masterpage/Taksomotor.master";
            site.RootWeb.Update();
        }


        // Uncomment the method below to handle the event raised before a feature is deactivated.

        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            var site = (SPSite)properties.Feature.Parent;
            site.RootWeb.MasterUrl = site.RootWeb.ServerRelativeUrl + "_catalogs/masterpage/seattle.master";
            site.RootWeb.CustomMasterUrl = site.RootWeb.ServerRelativeUrl + "_catalogs/masterpage/seattle.master";
            site.RootWeb.Update();
        }


        // Uncomment the method below to handle the event raised after a feature has been installed.

        //public override void FeatureInstalled(SPFeatureReceiverProperties properties)
        //{
        //}


        // Uncomment the method below to handle the event raised before a feature is uninstalled.

        //public override void FeatureUninstalling(SPFeatureReceiverProperties properties)
        //{
        //}

        // Uncomment the method below to handle the event raised when a feature is upgrading.

        public override void FeatureUpgrading(SPFeatureReceiverProperties properties, string upgradeActionName, System.Collections.Generic.IDictionary<string, string> parameters)
        {
            var site = (SPSite)properties.Feature.Parent;
            site.RootWeb.MasterUrl = site.RootWeb.ServerRelativeUrl + "_catalogs/masterpage/Taksomotor.master";
            site.RootWeb.CustomMasterUrl = site.RootWeb.ServerRelativeUrl + "_catalogs/masterpage/Taksomotor.master";
            site.RootWeb.Update();
        }
    }
}
