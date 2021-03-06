Configuration Server_Scenario_09_Watchdog_Create
{
    Import-DscResource -ModuleName OctopusDSC

    Node "localhost"
    {
        LocalConfigurationManager
        {
            DebugMode = "ForceModuleImport"
            ConfigurationMode = 'ApplyOnly'
        }

        cOctopusServerWatchdog OctopusServerWatchdog
        {
            InstanceName = "OctopusServer"
            Enabled = $True
            Interval = 10
            Instances = "*"
        }
    }
}