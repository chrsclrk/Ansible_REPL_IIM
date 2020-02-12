# Ansible_REPL_IIM
Asible as the machinery to churn through the IBM Installation Manager alternatives. 

This collection of Ansible playbooks is a starting point for accomplishing your IBM Installation Manager task.  This may involve IBM WebSphere or Rational products.  

My work was with WebSphere 8.5.5 and its Java 7 companion.  The business context is configuring an unit-test server to rehearse the in-place-update to a production server.  The playbooks are useful to my finding the collection of options and files to meet the objective.  Because of the many pieces in this middleware configuration puzzles the Ansible scripts provide a way rapidly iterate to a workable configuration.  

The benefits of this approach:
* Guide the discovery process for the right configuration by implementing small use cases fast.  
    - All the work is codified in the playbook.  
    - No stuggling to remember the brilliant bash one-liner I keyed yesterday.
* Collection of playbooks are successive milestones in the project's task list.
* When iterating to a solution in a playbook tags provides precision on what to execute.
    - `--tags 'good, better, best'` from Terminal
    - `tags: good, better, best` in the playbook
* When you are happy with the results  be confident in replicating what was accomplished in dev-test to dev-test and production.



| setup for WAS 8.5.5 and Java 7 tasks             | WAS 8.5.5 tasks                   | Java 7 tasks                                           |
| :---                                             | :----                             | :--- |
| `j163.001.iim_prep_rhsm.yaml` 
| `j163.002.iim_prep_grp_usr_dir.yaml`
| `j163.003.iim_prep_stage_IIM_repos.yaml`
| `j163.004.iim_prep_iim_install.yaml`
| `j163.005.iim_prep_777_.fileTableLock_.yaml` | 
| `j163.006.iim_prep_iim_listAvailablePackages.yaml` | 
|                                                    | `j163.007.wasBase_install_855.yaml` |
|                                                    |                                     | `j163.008.java7_install.yaml` |
|                                                    | `j163.009.wasBase_maint_FP04.yaml`  | |
|                                                    |                                     | `j163.010.java7_iim_credentials.yaml` |
|                                                    |                                     | `j163.011.java7_FP08_IBM_hosted_repository_list.yaml` |
|                                                    |                                     | `j163.012.java7_FP08_IBM_hosted_repository_install.yaml` |
|                                                    | `j163.013.wasBase_maint_FP16.yaml`  | |
|                                                    |                                     | `j164.013.java7_maint_SR10_FP45.yaml` |
