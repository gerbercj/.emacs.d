(setq my-secrets-file
      (expand-file-name "secrets.el" user-emacs-directory))

(when (file-exists-p my-secrets-file)
  (load my-secrets-file))
