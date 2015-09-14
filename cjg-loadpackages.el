; ~/.emacs.d/my-loadpackages.el
; loading package
(load (expand-file-name "cjg-packages.el" cjg-emacs-config-dir))

(require 'evil)
(evil-mode 1)

(require 'magit)
(define-key global-map (kbd "C-c m") 'magit-status)

(require 'telephone-line)
(setq telephone-line-lhs
      '((evil   . (telephone-line-evil-tag-segment))
        (accent . (telephone-line-vc-segment
                    telephone-line-erc-modified-channels-segment
                    telephone-line-process-segment))
        (nil    . (telephone-line-minor-mode-segment
                    telephone-line-buffer-segment))))
(setq telephone-line-rhs
      '((nil    . (telephone-line-misc-info-segment))
        (accent . (telephone-line-major-mode-segment))
        (evil   . (telephone-line-airline-position-segment))))
(telephone-line-mode 1)

(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
    (setq yas-dont-activate t)))
