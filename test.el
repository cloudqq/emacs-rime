(package-initialize)

;;載入lisp文件之前必須先添加到load path
(add-to-list 'load-path    (file-name-directory (buffer-file-name)))

;;在本地的rime.el進行測試驗證

(load-file "rime.el")
;; 這句其實不需要，後續在使用過程中會自動進行編譯
(byte-compile-file "rime.el")

;; 開始使用rime
(require 'rime)

;; (rime-compile-module)
;; 下面這里是設置系統的默認輸入法， 另外將候選修改成postframe
(setq default-input-method "rime"
      rime-show-candidate 'posframe)

;; 在mac中emacs 2.7 即便將動態庫生成了dylib形式，但是emacs還是會將dylib用作普通文件進行讀取，不會作爲擴展動態庫進行載入，必須是.so
;;(setq rime--module-path "/Users/mario/workdir/opensource/emacs-rime/librime-emacs.dylib")

;; 調用切換輸入法，實際是激活輸入法
(toggle-input-method)

;; 下面這個是測試驗證載入動態庫，如果提示新建初始化文件就可以用了
(rime--load-dynamic-module)

;;(setq module-file-suffix ".dylib")

;; (rime--build-compile-env)
;; 以下是一些測試的變量
;; rime--root
;; rime--module-path
;; module-file-suffix
;; rime--module-path
