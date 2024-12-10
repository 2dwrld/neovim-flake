{ pkgs }:

{
    packages = with pkgs;
        [

		#colortheme
		rose-pine
            # Dependencies
            fd
            git
            ripgrep

            # Formatters
            goimports           # --golang
            golines             #
            gofumpt             #
            gotools             #

            ruff                # --python
            isort               #

            nixfmt-rfc-style    # --nix
            nixpkgs-fmt         #

            jq                  # --json
            stylua              # --lua
            markdown-oxide      # --markdown
            shfmt               # --shell
            prettierd           # --js/ts, css, html, yaml
            sql-formatter       # --sql
            taplo               # --toml

            # Linters
            golangci-lint       # --golang
            eslint_d            # --js
            typos               # --check for misspelled words
            yamllint            # --yaml
            csslint             # --css

            # LSP
            bash-language-server
            gopls
            vscode-langservers-extracted        # --html, css, ...
            typescript-language-server
            lua-language-server
            marksman
            basedpyright                        # --python
            nil                                 # --nix
            sqls
            yaml-language-server
        ];

    # Extra lua packages to install, where package is 'xxx' in lua51Packages.xxx
    extraLuaPackages = ps: with ps; [
        jsregexp # required by luasnip
    ];

    # Extra python packages
    extraPython3Packages = _: [ ];
}
