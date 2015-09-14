;; get current file name
(setq cjg-emacs-init-file load-file-name)
;; get directory portion of that file name
(setq cjg-emacs-config-dir
      (file-name-directory cjg-emacs-init-file))

;; set a custom custominzations file name
(setq custom-file (expand-file-name "emacs-customizations.el" cjg-emacs-config-dir))

(load (expand-file-name "cjg-loadpackages.el" cjg-emacs-config-dir))
(load (expand-file-name "cjg-methods.el" cjg-emacs-config-dir))
(add-hook 'after-init-hook '(lambda ()
  (load (expand-file-name "cjg-noexternals.el" cjg-emacs-config-dir))
  ;; load customizations from GUI last
  (load custom-file)))
