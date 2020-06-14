function _copy_setup_terraform_files() {
	local _terraform_dir="$environment.runtimeModulePath/terraform/infraxys-vpc-private";
#[[	
	log_info "Copying Terraform files under $_terraform_dir to $TERRAFORM_TEMP_DIR.";
	cp -R "$_terraform_dir"/* "$TERRAFORM_TEMP_DIR/";
}

_copy_setup_terraform_files;
]]#