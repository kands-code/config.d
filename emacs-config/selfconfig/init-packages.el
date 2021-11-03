;; 初始化包

;; 使用 'restart-emacs'
(use-package restart-emacs)

;; 使用 'benchmark-init' 测试启动耗时
;; (use-package benchmark-init
;;   :init (benchmark-init/activate)
;;   :hook (after-init . benchmark-init/deactivate))

;; 使用 'drag-stuff' 进行区域移动
(use-package drag-stuff
  :bind (("<M-up>" . drag-stuff-up)
	 ("<M-down>" . drag-stuff-down)))

;; 提供名称
(provide 'init-packages)
