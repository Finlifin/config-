(load-file "~/.emacs.d/lisp/options.el")
(require 'options)

(load-file "~/.emacs.d/lisp/keymappings.el")
(require 'keymappings)

(load-file "~/.emacs.d/lisp/outlook.el")
(require 'outlook)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ed91d4e59412defda16b551eb705213773531f30eb95b69319ecd142fab118ca" "c335adbb7d7cb79bc34de77a16e12d28e6b927115b992bccc109fb752a365c72" "1100638bf0729ccc14aeb2dd8a5aa32b738344a3fd8dba9ebfde144f71c4ed5a" "4c7228157ba3a48c288ad8ef83c490b94cb29ef01236205e360c2c4db200bb18" default))
 '(package-selected-packages
   '(clues-theme afternoon-theme deadgrep nord-theme typescript-mode zig-mode fish-mode crystal-mode haskell-mode julia-ts-mode python-mode julia-mode rust-mode markdown-preview-mode yasnippet dired vterm evil smooth-scroll fuzzy auto-complete auto-completion ## company-box lsp-mode company helm poet-theme use-package ligature fira-code-mode)))

(load-file "~/.emacs.d/lisp/packages.el")
(require 'my-packages)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(popup-tip-face ((t (:background "#110225" :foreground "#ddd")))))
