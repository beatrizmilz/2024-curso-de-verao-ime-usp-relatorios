# install.packages("usethis")

# carregar o pacote usethis
library(usethis)

# se apresentar para o git!
usethis::use_git_config(
  user.name = "Beatriz Milz",
  user.email = "milz.bea@gmail.com"
)

# Criar um PAT - Personal Access token
usethis::create_github_token()
# Essa função vai levar a gente para a página do github
# para criar um token.
# precisamos dar um nome informativo 
# (ex. em qual computador vamos usar esse token??)
# e uma data de expiração.
# não precisamos mudar as configurações de acesso 

# Ao final da página, tem um botão para criar o token

# Na página seguinte, podemos COPIAR O TOKEN.

# Para registrar o token, usar:
gitcreds::gitcreds_set()

# Colar o token quando solicitado.

# Importante: reiniciar a sessão do R para a senha ficar disponível.
# Menu superior -> session -> restart R.


# Para verificar se tudo deu certo, ou buscar solucionar erros
# essa função é bem util!
usethis::git_sitrep()


# ── Git global (user) 
# • Name: 'Beatriz Milz' # >>>>>>>>>. IMPORTANTE TER O SEU NOME
# • Email: 'milz.bea@gmail.com'  # >>>>>>>>>. IMPORTANTE TER O SEU EMAIL
# • Global (user-level) gitignore file: <unset>
# • Vaccinated: FALSE
# ℹ See `?git_vaccinate` to learn more
# • Default Git protocol: 'https'
# • Default initial branch name: 'main'
# 
# ── GitHub user 
# • Default GitHub host: 'https://github.com'
# • Personal access token for 'https://github.com': '<discovered>'.  # >>>>>>>>>. IMPORTANTE TER O PAT COMO DISCOVERED
# • GitHub user: 'beatrizmilz'
# • Token scopes: 'gist, repo, user, workflow'
# • Email(s): '42153618+beatrizmilz@users.noreply.github.com', 'milz.bea@gmail.com (primary)'




