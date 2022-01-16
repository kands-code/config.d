(require 'package)
;; set ustc mirrors
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

;; init package
;; -- disable check signature
(setq package-check-signature nil)
;; -- init
(unless (bound-and-true-p package--initialized)
  (package-initialize))
;; -- refresh index
(unless package-archive-contents
  (package-refresh-contents))

;; use use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; config use-package
(eval-and-compile
  ;; add "ensure t" to every package
  (setq use-package-always-ensure t)
  ;; default to defer
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally t)
  (setq use-package-verbose t))

(provide 'init-pack)
