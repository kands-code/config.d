;;; init.el -- my emacs config

;;; add conf directory to path
(add-to-list 'load-path
	     (expand-file-name
	      (concat user-emacs-directory "conf")))

;;; config custom file
(setq custom-file (expand-file-name
		   "custom.el" user-emacs-directory))

;;; load the basic config
(require 'init-basic)
;;; load the package config
(require 'init-pack)
;;; load the plugins
(require 'init-plugins)
;;; load ui config
(require 'init-ui)
;;; load keyboard config
(require 'init-kbd)
;;; lsp mode config
(require 'init-lsp)

;;; load custom file
(when (file-exists-p custom-file)
  (load-file custom-file))

