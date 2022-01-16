;;; init-lsp -- LSP Configs

;;; Commentary:
(require 'use-package)

;;; Code:

;; use agda mode
(load-file (let ((coding-system-for-read 'utf-8))
	     (shell-command-to-string "agda-mode locate")))

; use company-mode
(use-package company
  :config
  ;; -- customization
  (setq company-begin-commands '(self-insert-command))
  (setq company-minimum-prefix-length 2)
  (setq company-idle-delay
	(lambda () (if (company-in-string-or-comment) nil 0.1)))
  (setq company-global-modes
	'(not erc-mode message-mode eshell-mode))
  ;; -- frontends
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
  ;; -- frontends -- search
  (setq company-echo-delay 0)
  (setq company-search-regexp-function
	'company-search-flex-regexp)
  ;; -- backends
  (setq company-dabbrev-code-everywhere t)
  (setq company-dabbrev-minimum-length 2)
  (setq company-dabbrev-other-buffers t)
  (setq company-dabbrev-ignore-case 'keep-prefix)
  (setq company-files-exclusions '(".git/" ".DS_Store"))
  ;; -- set backends
  (push '(company-semantic :with company-yasnippet)
	company-backends)
  :hook
  (after-init . global-company-mode))

;; flycheck
(use-package flycheck
  :hook (after-init . global-flycheck-mode))
;; dash
(use-package dash
:hook (after-init . global-dash-fontify-mode))

;; lsp-mode
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands (lsp lsp-deferred)
  :hook ((c-mode . lsp-deferred)
	 (c++-mode . lsp-deferred)
	 (sh-mode . lsp-deferred)
	 (tex-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-idle-delay 0.1))

(require 'lsp)
;; -- lsp-ui
(use-package lsp-ui
  :after lsp-mode
  :init
  ;; -- ui-doc
  (setq lsp-ui-doc-enable t
	lsp-ui-doc-show-with-mouse t
	lsp-ui-doc-header 1
	lsp-ui-doc-include-signature 1
	lsp-ui-doc-position 'at-point
	lsp-ui-doc-use-webkit t
	lsp-ui-doc-delay 0)
  ;; -- imenu
  (setq lsp-ui-imenu-kind-position 'left
	lsp-ui-imenu-auto-refresh 'after-save)
  :config
  (setq lsp-ui-flycheck-enable 1)
  :commands lsp-ui-mode)

;; -- lsp-mode -- haskell-lsp
(use-package lsp-haskell
  :after lsp-mode
  :hook ((haskell-mode . lsp-deferred)
	 (haskell-literate-mode . lsp-deferred)))

;; other plugins
(use-package helm-lsp
  :config
  (define-key lsp-mode-map
    [remap xref-find-apropos] #'helm-lsp-workspace-symbol))
(use-package helm
  :config (helm-mode))
(use-package lsp-treemacs)

(provide 'init-lsp)
