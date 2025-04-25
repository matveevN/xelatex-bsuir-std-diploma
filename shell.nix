with (import <nixpkgs> {  });
mkShell {
    packages = [
        texliveFull
        gh
        corefonts
        vistafonts
        (vscode-with-extensions.override {
            vscodeExtensions = with vscode-extensions; [
                james-yu.latex-workshop
                streetsidesoftware.code-spell-checker
                tal7aouy.icons
                jnoortheen.nix-ide
                wmaurer.change-case
            ] ++ vscode-utils.extensionsFromVscodeMarketplace [
                {
                    name = "code-spell-checker-russian";
                    publisher = "streetsidesoftware";
                    version = "2.2.3";
                    hash = "sha256-2sLYp6xaCo8RREK7CSWqunW56zJcKNbxHY6VHQqpi1M=";
                }
            ];
        })
    ];
}
