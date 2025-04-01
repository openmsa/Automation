#!/bin/bash

. /usr/share/install-libraries/il-lib.sh

pushd /opt/fmc_repository/Automation || exit

emit_step "Automation from OpenMSA_Automation"
ln -fsn ../OpenMSA_Automation/Catalog Catalog;
chown -R ncuser.ncuser /opt/fmc_repository/OpenMSA_Automation/
popd || exit
pushd /opt/fmc_repository/Process/PythonReference || exit
emit_step "Symlink to CCLA_WF"
ln -fsn /opt/fmc_repository/Process/cloudclapp-wf/cloud_sdk ccla_cloud
popd || exit
