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

;; 使用 'company' 提供补全体验
(use-package company
  :config
  (setq company-minimum-prefix-length 2 ;; 最小补全长度
	company-show-numbers nil ;; 是否显示编号
	company-tooltip-limit 10 ;; 补全列表长度 应该够用
	;; 边缘显示 默认为滚动条
	company-tooltip-offset-display 'lines ;; 这样好看点
	company-idle-delay 0.1 ;; 开始自动补全前的延迟秒数
	company-echo-delay 0.1 ;; 回显延迟秒数
	;; company-dabbrev 会按照 buffer 的内容补全
	;; 而 company-dabbrev-code 不会补全注释里的内容
	company-dabbrev-code-everywhere t
	company-dabbrev-code-modes t
	company-dabbrev-code-ignore-case t
	company-dabbrev-code-other-buffers 'all
	;; company-dabbrev 配置
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case t ;; 补全忽略大小写
	company-dabbrev-other-buffers 'all
	;; 其他配置
	company-begin-commands '(self-insert-command)
	company-require-match nil)
  ;; 配置 company 后端
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))

;; 提供名称
(provide 'init-packages)

