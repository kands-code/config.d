;; add conf directory to path
(add-to-list 'load-path
	     (expand-file-name
	      (concat user-emacs-directory "conf")))
;; load the basic config
(require 'init-basic)
;; load the package config
(require 'init-pack)
