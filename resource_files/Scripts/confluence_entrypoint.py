#!/usr/bin/python3 -B
import subprocess

from entrypoint_helpers import env, gen_cfg, str2bool_or, exec_app


RUN_USER = env['run_user']
RUN_GROUP = env['run_group']
CONFLUENCE_INSTALL_DIR = env['confluence_install_dir']
CONFLUENCE_HOME = env['confluence_home']
UPDATE_CFG = str2bool_or(env.get('atl_force_cfg_update'), False)

gen_cfg('server.xml.j2', f'{CONFLUENCE_INSTALL_DIR}/conf/server.xml')
gen_cfg('seraph-config.xml.j2',
        f'{CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/classes/seraph-config.xml')
gen_cfg('confluence-init.properties.j2',
        f'{CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/classes/confluence-init.properties')
gen_cfg('confluence.cfg.xml.j2', f'{CONFLUENCE_HOME}/confluence.cfg.xml',
        user=RUN_USER, group=RUN_GROUP, overwrite=UPDATE_CFG)

subprocess.Popen(['nohup', 'bash', '-c', '/tomcat_to_stdout.sh'], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

exec_app([f'{CONFLUENCE_INSTALL_DIR}/bin/start-confluence.sh', '-fg'], CONFLUENCE_HOME,
         name='tomcat_to_stdout')