# Code to automatically schedule execution of r files #

#install.packages("taskscheduleR")

# "anm_cfem_arrecadacao" #

taskscheduleR::taskscheduler_create(
  taskname = "anm_cfem_arrecadacao",
  rscript = "Z:/rstudio/anm/arrecadacao/anm_cfem_arrecadacao.R",
  schedule = 'WEEKLY'
)

 # "anm_cfem_arrecadacao" #

taskscheduleR::taskscheduler_create(
  taskname = "comexstat_ncm",
  rscript = "Z:/rstudio/comexstat/comexstat_ncm/comexstat_ncm.R",
  schedule = 'WEEKLY'
)

# verificar execução arquivo
arquivo <- readr::read_csv2("Z:/rstudio/anm/arrecadacao/anm_cfem_arrecadacao.R")

#verificar agenda
schedule <- taskscheduleR::taskscheduler_ls() |> dplyr::as_tibble()

schedule |> dplyr::filter(`Nome da tarefa` == "anm_cfem_arrecadacao")

#Exclusão
taskscheduleR::taskscheduler_delete("comexstat_ncm")
