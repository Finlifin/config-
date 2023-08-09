(load-file "~/.emacs.d/lisp/functions/on-editing.el")
(require 'functions-on-editing)

;;(global-unset-key (kbd "M-q"))
;;(global-set-key (kbd "M-w") 'tab-switcher)
(global-set-key (kbd "M-w") 'other-window)

(global-set-key (kbd "M-j") 'next-line)
;;(global-set-key (kbd "M-J") 'goto-next-empty-line)
;;(global-set-key (kbd "M-K") 'goto-next-empty-line)
(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-k") 'previous-line)
(global-set-key (kbd "M-e") 'right-word)
(global-set-key (kbd "M-b") 'left-word)
;;(global-set-key (kbd "M-o") '(lambada () (end-of-line) (split-line)))
(global-set-key (kbd "M-n") 'forward-sentence)
(global-set-key (kbd "M-a") 'backward-sentence)
(global-set-key (kbd "M-i") 'beginning--line)
(global-set-key (kbd "M-;") 'end-of-line)

(global-set-key (kbd "C-w") '(lambda () (interactive) (kill-buffer-and-window)))

;;edition action
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-<backspace>") 'backward-kill-word)
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-o") '(lambda ()
			       (interactive)
			       (end-of-line)
			       (newline)))
(global-set-key (kbd "M-O") '(lambda ()
			       (interactive)
			       (beginning-of-line)
			       (newline)
			       (previous-line)))


(global-set-key (kbd "C-f") 'isearch-forward)

 (defun wl-copy (text)
    (setq wl-copy-process (make-process :name "wl-copy"
                                        :buffer nil
                                        :command '("wl-copy")
                                        :connection-type 'pipe))
    (process-send-string wl-copy-process text)
    (process-send-eof wl-copy-process))
  (defun wl-paste ()
    (if (and wl-copy-process (process-live-p wl-copy-process))
        nil ; should return nil if we're the current paste owner
        (shell-command-to-string "wl-paste")))
  (setq interprogram-cut-function 'wl-copy)
  (setq interprogram-paste-function 'wl-paste)


(global-set-key (kbd "M-u") nil)
(global-set-key (kbd "M-u s") 'save-buffer)
(global-set-key (kbd "M-u u") 'lsp-bridge-popup-documentation)
(global-set-key (kbd "M-u k") 'keyboard-escape-quit)
(global-set-key (kbd "M-u e") 'eval-buffer)
(global-set-key (kbd "M-u f") 'lsp-bridge-code-format)
(global-set-key (kbd "M-u a") 'lsp-bridge-code-action)
(global-set-key (kbd "M-u i") 'execute-extended-command)
(global-set-key (kbd "M-u k") 'kill-current-buffer)

(global-set-key (kbd "C-<tab>") 'switch-to-next-buffer)
(global-set-key (kbd "M-u w") 'other-window)
(global-set-key (kbd "M-y") '(lambda () (interactive) (wl-copy (buffer-substring-no-properties (region-beginning) (+ 1 (region-end))))))
(global-set-key (kbd "M-v") '(lambda () (interactive) (insert (shell-command-to-string "wl-paste")) (backward-delete-char 1) ))
(global-set-key (kbd "M-u ESC") nil)

(provide 'keymappings)
