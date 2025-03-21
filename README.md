# 
# Kitchen Control | fase 3

## Executar action para criar o EKS
https://github.com/caiojorge/fiap-fase3-infra-eks/settings/secrets/actions

## Secrets github action    
- substituir as secrets no github pelos valores indicados pela AWS

```
AWS_ACCESS_KEY_ID = id no aws
AWS_SECRET_ACCESS_KEY = key no aws
AWS_SESSION_TOKEN = token no aws
```        
- fazer isso para todos os projetos

## Executar a action
- Temos 2 formas de iniciar a action
  - via pull_request
  - via workflow_dispatch

# 