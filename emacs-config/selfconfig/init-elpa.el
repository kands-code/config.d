 
;; 配置包管理

;; 配置软件源
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
			 ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

;; 关闭检查包签名
(setq package-check-signature nil)

;; 使用包管理器
(require 'package)

;; 初始化包管理器
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; 刷新软件源列表
(unless package-archive-contents
  (package-refresh-contents))

;; 安装 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; set by 'use-package'
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(smart-mode-line use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 'use-package' 常用格式
;; (use-package smooth-scrolling
;;   :ensure t ;; 是否一定要确保安装
;;   :defer nil ;; 是否要延迟加载
;;   :init (setq smooth-scrolling-margin 2) ;; 初始化参数
;;   :config (smooth-scrolling-mode t) ;; 基本配置参数
;;   :bind ;; 按键的绑定
;;   :hook) ;; hook 模式的绑定

;; 配置 'use-package'
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-expand-minimally t
      use-package-verbose t)

;; 使用 'use-package'
(require 'use-package)

;; 提供名称
(provide 'init-elpa)
