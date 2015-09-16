;; get current file name
(setq cjg-emacs-init-file load-file-name)
;; get directory portion of that file name
(setq user-emacs-directory
      (file-name-directory cjg-emacs-init-file))

;; move file backups inside of our directory
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;; set a custom custominzations file name
(setq custom-file (expand-file-name "emacs-customizations.el" user-emacs-directory))

(load (expand-file-name "cjg-loadpackages.el" user-emacs-directory))
(load (expand-file-name "cjg-methods.el" user-emacs-directory))
(add-hook 'after-init-hook '(lambda ()
  (load (expand-file-name "cjg-noexternals.el" user-emacs-directory))
  ;; load customizations from GUI last
  (load custom-file)))
