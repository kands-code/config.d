;;; init-kbd.el -- key maps

(define-key
  minibuffer-local-map
  (kbd "C-r") 'counsel-minibuffer-history)

(provide 'init-kbd)
