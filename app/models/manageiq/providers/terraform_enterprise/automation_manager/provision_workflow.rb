class ManageIQ::Providers::TerraformEnterprise::AutomationManager::ProvisionWorkflow < MiqProvisionConfigurationScriptWorkflow
  def self.default_dialog_file
    'miq_provision_configuration_script_dialogs'
  end

  def validate(*)
    true
  end

  def dialog_name_from_automate(message = 'get_dialog_name', input_fields = [:request_type], extra_attrs = {'platform_category' => 'terraform_enterprise'})
    super
  end
end
