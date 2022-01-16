(require 'use-package)
;; restart emacs
(use-package restart-emacs)

;; benchmark init
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

;; drag stuff
(use-package drag-stuff
  :bind (("<M-up>" . drag-stuff-up)
	 ("<M-down>" . drag-stuff-down)))

;; yasnippet
(use-package yasnippet
  :hook (after-init . yas-global-mode)
  :config
  (yas-global-mode 1))

;; ivy counsel swiper avy
;; -- enhanced prompt
(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	enable-recursive-minibuffers t)
  :bind (("C-c C-r" . ivy-resume)
	 ("<f6>" . ivy-resume)))
;; -- enhanced emacs command
(use-package counsel
  :after ivy
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("<f1> f" . counsel-describ-function)
	 ("<f1> v" . counsel-describe-variable)
	 ("<f1> o" . counsel-describe-symbol)
	 ("<f1> l" . counsel-find-library)
	 ("<f2> i" . counsel-info-lookup-symbol)
	 ("<f2> u" . counsel-unicode-char)
	 ("C-c g" . counsel-git)
	 ("C-c j" . counsel-git-grep)
	 ("C-x l" . counsel-locate)))
;; -- enhanced search
(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config
  (setq search-default-mode #'char-fold-to-regexp
	swiper-action-recent t
	swiper-include-line-number-in-search t))

;; refine emacs : crux
(use-package crux
  :bind (("C-c k" . crux-kill-other-buffers)
	 ("C-c TAB" . crux-indent-rigidly-and-copy-to-clipboard)
	 ("C-a" . crux-move-beginning-of-line)
	 ("C-k" . crux-smart-kill-line)
	 ("C-c i" . crux-find-user-init-file)
	 ("C-^" . crux-top-join-line)))

(provide 'init-plugins)
