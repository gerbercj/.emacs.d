(require 'evil)
(evil-mode 1)

;; normal state shortcuts
(evil-define-key 'normal evil-org-mode-map
                 "$" 'org-end-of-line
                 "^" 'org-beginning-of-line
                 "<" 'org-metaleft
                 ">" 'org-metaright
                 "-" 'org-cycle-list-bullet
                 (kbd "TAB") 'org-cycle)

;; Remap org-mode meta keys in insert and normal modes
(mapc (lambda (state)
        (evil-define-key state evil-org-mode-map
                         (kbd "M-l") 'org-metaright
                         (kbd "M-h") 'org-metaleft
                         (kbd "M-k") 'org-metaup
                         (kbd "M-j") 'org-metadown
                         (kbd "M-L") 'org-shiftmetaright
                         (kbd "M-H") 'org-shiftmetaleft
                         (kbd "M-K") 'org-shiftmetaup
                         (kbd "M-J") 'org-shiftmetadown))
      '(normal insert))

