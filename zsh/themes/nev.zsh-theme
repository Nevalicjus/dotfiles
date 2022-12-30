# Nev Custom ZSH Theme
# (c) 2022 Maciej Bromirski

username() {
	echo "%F{87}%n%f"
} 

hostname() {
	echo "%F{75}%M%f"
}

directory() {
	echo "%F{222}%~%f"
}

privileges() {
	echo "%#"
}

GIT_PROMPT_EXECUTABLE="shell"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
