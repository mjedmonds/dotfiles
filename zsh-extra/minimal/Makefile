M=modules

all:
	@make clean
	@make minimal

clean:
	rm -f minimal.zsh-theme

minimal:
	@echo "concatenating modules and prompt"
	@cat \
		$M/{defaults,user,jobs,status,path,git,vimode}.zsh \
		prompt.zsh \
	> minimal.zsh-theme
