(require 'use-package)

;; themes
;; -- srcery
(use-package srcery-theme
  :init (load-theme 'srcery t))

;; telephone-line
(use-package telephone-line
  :init
  ;; -- config cubed
  (setq telephone-line-primary-left-separator 'telephone-line-cubed-left
	telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
	telephone-line-primary-right-separator 'telephone-line-cubed-right
	telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
  (setq telephone-line-height 24
	telephone-line-evil-use-short-tag t)
  ;; -- start telephone-line
  (telephone-line-mode t))

;; set font
(use-package emacs
  :if (display-graphic-p)
  :config
  (if
      (and (member "Fira Code" (font-family-list))
	   (member "Sarasa Mono J" (font-family-list)))
    (progn
      (set-face-attribute 'default nil :font "Fira Code 16")
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font
	 (frame-parameter nil 'font)
	 charset (font-spec :family "Sarasa Mono Slab SC 16"))))
    (set-face-attribute 'default nil :height 160)))

(provide 'init-ui)
