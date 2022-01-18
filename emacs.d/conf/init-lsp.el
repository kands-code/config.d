;;; init-lsp -- LSP Configs

(require 'use-package)

;;; use agda mode
(load-file (let ((coding-system-for-read 'utf-8))
	     (shell-command-to-string "agda-mode locate")))

;;; use company-mode
(use-package company
  :bind
  (:map company-mode-map
	("<tab>" . tab-indent-or-complete)
	("TAB" . tab-indent-or-complete))
  :config
  ;;; -- customization
  (setq company-begin-commands '(self-insert-command))
  (setq company-minimum-prefix-length 2)
  (setq company-idle-delay
	(lambda () (if (company-in-string-or-comment) nil 0.1)))
  (setq company-global-modes
	'(not erc-mode message-mode eshell-mode))
  ;;; -- frontends
  (setq company-show-quick-access nil)
  (setq company-tooltip-align-annotations t)
  (setq company-tooltip-limit 8)
  (setq company-tooltip-offset-display 'lines)
  (setq company-tooltip-minimum 4)
  (setq company-tooltip-flip-when-above t)
  (setq company-tooltip-margin 1)
  (setq company-format-margin-function
	'company-text-icons-margin)
  (setq company-text-icons-add-background t)
  ;;; -- frontends -- search
  (setq company-echo-delay 0)
  (setq company-search-regexp-function
	'company-search-flex-regexp)
  ;;; -- backends
  (setq company-dabbrev-everywhere t)
  (setq company-dabbrev-code-everywhere t)
  (setq company-dabbrev-minimum-length 2)
  (setq company-dabbrev-other-buffers t)
  (setq company-dabbrev-ignore-case 'keep-prefix)
  (setq company-files-exclusions '(".git/" ".DS_Store"))
  ;;; -- set backends
  (push '(company-semantic :with company-yasnippet)
	company-backends)
  :hook
  (after-init . global-company-mode))

;;; -- tab config

(defun company-yasnippet-or-completion ()
  (interactive)
  (or (do-yas-expand)
      (company-complete-common)))

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "::") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))

;;; use nix-mode
(use-package nix-mode
  :hook (after-init . nix-prettify-global-mode)
  :mode "\\.nix\\'")

;;; use rust-mode
(use-package rust-mode
  :config
  (setq rust-format-on-save t)
  (define-key rust-mode-map (kbd "C-c C-c") 'rust-run)
  (add-hook 'rust-mode-hook (lambda () (setq indent-tabs-mode nil)))
  (add-hook 'rust-mode-hook (lambda () (prettify-symbols-mode))))

;;; use haskell-mode
(use-package haskell-mode
  :bind
  ("C-c C-f" . haskell-mode-format-imports)
  :config
  (interactive-haskell-mode t)
  (setq haskell-process-path-ghci "~/.local/bin/ghci")
  (setq haskell-process-path-cabal "~/.local/bin/cabal"))
   
(provide 'init-lsp)
