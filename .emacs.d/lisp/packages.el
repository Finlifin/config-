(use-package helm)

;; (ac-config-default)
(global-unset-key (kbd "C-y"))

(add-to-list 'load-path "~/.emacs.d/lisp/plugin/lsp-bridge/")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)

;; (load-file "~/.emacs.d/lisp/plugin/completion.el")
(load-file "~/.emacs.d/lisp/plugin/evil.el")

(provide 'my-packages)
