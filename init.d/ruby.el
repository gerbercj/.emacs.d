(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'my-code-modes-hook)))

(eval-after-load 'ruby-mode
  '(progn 

     (require 'rcodetools)
     (setq xmpfilter-command-name "ruby -S xmpfilter --dev --fork --detect-rbtest")
     (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

(autoload 'rspec-mode "rspec-mode")
(add-hook 'ruby-mode-hook (lambda () (rspec-mode)))

(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
