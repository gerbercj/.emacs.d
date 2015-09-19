(require 'smex)
(smex-initialize) ; pre-initialize to speed up first run
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ; this is the old M-x

