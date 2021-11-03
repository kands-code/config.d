;; 一些常量的定义

(setq *is-mac* (eq system-type 'darwin))
(setq *is-win* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))
(setq *is-linux* (eq system-type 'gnu/linux))

;; 配置垃圾回收
;; (setq gc-cons-threhold most-positive-fixnum)

;; 提供名称
(provide 'init-const)
