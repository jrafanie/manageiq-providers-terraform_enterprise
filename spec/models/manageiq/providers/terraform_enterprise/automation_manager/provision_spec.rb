describe ManageIQ::Providers::TerraformEnterprise::AutomationManager::Provision do
  let(:admin)       { FactoryBot.create(:user_admin) }
  let(:ems)         { FactoryBot.create(:ems_terraform_enterprise) }
  let(:workspace)   { FactoryBot.create(:configuration_script_terraform_enterprise, :manager => ems) }
  let(:miq_request) { FactoryBot.create(:miq_provision_request, :requester => admin, :source => workspace)}
  let(:options)     { {:source => [workspace.id, workspace.name]} }
  let(:subject)     do
    FactoryBot.create(
      :miq_provision_terraform_enterprise,
      :userid       => admin.userid,
      :miq_request  => miq_request,
      :source       => workspace,
      :request_type => 'template',
      :state        => 'pending',
      :status       => 'Ok',
      :options      => options
    )
  end

  it ".my_role" do
    expect(subject.my_role).to eq("ems_operations")
  end

  it ".my_queue_name" do
    expect(subject.my_queue_name).to eq(ems.queue_name_for_ems_operations)
  end
end
