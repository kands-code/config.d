;; 主配置文件

;; 关闭备份
(setq make-backup-files nil)

;; 加载配置文件
;; 加入路径
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory ;; ~/.emacs.d/
				       "selfconfig")))
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory
				       "lspconfig"))) ;; lsp配置
 
;; 定义一些常量
(require 'init-const)

;; 调用 init-startup 初始化 emacs
(require 'init-startup)

;; 调用 init-elpa 提供 'use-package'
(require 'init-elpa)

;; 调用 init-packages 初始化包
(require 'init-packages)

;; 调用键盘配置
(require 'init-kbd)

;; 调用 init-ui 配置主题 和 mode-line
(require 'init-ui)

;; set by 'use-package'
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(drag-stuff use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
