(setq my-code-modes-hook nil)

(autoload 'fci-mode "fill-column-indicator"
          "Toggle fill column indicator"
          t)

;; Line numbers
(add-hook 'my-code-modes-hook
          (lambda () (linum-mode 1)))

;; Truncate lines
(add-hook 'my-code-modes-hook
          (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'my-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

(add-hook 'org-export-preprocess-hook
          (lambda () (fci-mode -1)))

(add-hook 'my-code-modes-hook
          (lambda () (hl-line-mode 1)))

(defun my-run-code-modes-hook ()
  (run-hooks 'my-code-modes-hook))

