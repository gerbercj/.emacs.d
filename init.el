;; set directories and filenames
(setq my-emacs-init-file (or load-file-name buffer-file-name))
(setq user-emacs-directory (file-name-directory my-emacs-init-file))
(setq my-elisp-dir (expand-file-name "elisp" user-emacs-directory))
(setq my-elisp-external-dir (expand-file-name "external" my-elisp-dir))
(setq my-themes-dir (expand-file-name "themes" user-emacs-directory))
(setq my-init-dir (expand-file-name "init.d" user-emacs-directory))

;; set a custom customizations file name
(setq custom-file (expand-file-name "emacs-customizations.el" user-emacs-directory))
(load custom-file)

;; load files in initialization directory
(if (file-exists-p my-init-dir)
  (dolist (file (directory-files my-init-dir t "\\.el$"))
    (load file)))

