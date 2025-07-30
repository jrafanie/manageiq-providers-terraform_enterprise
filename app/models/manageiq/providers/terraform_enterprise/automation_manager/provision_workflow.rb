class ManageIQ::Providers::TerraformEnterprise::AutomationManager::ProvisionWorkflow < MiqProvisionConfigurationScriptWorkflow
  def self.default_dialog_file
    'miq_provision_configuration_script_dialogs'
  end

  def validate(*)
    true
  end
end
