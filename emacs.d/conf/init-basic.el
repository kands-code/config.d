;;; init-basic -- basic emacs configs

;;; disable startup page
(setq inhibit-startup-screen t)
;;; disable menu bar
(menu-bar-mode 0)
;;; disable tool bar
(tool-bar-mode 0)
;;; disable scroll bar
(scroll-bar-mode 0)

(setq auto-save-default nil
      delete-by-moving-to-trash t
      make-backup-files nil)

;;; set key number
(unless (or (eq system-type 'ms-dos)
	    (eq system-type 'windows-nt))
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t))
;;; set encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;;; set gc capacity
(setq gc-cons-threshold most-positive-fixnum)

;;; use y-n replace yes-no
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-basic)
