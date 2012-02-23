;;; Egg for filesystem notification
;;; We should autodetect the presence of fsevent and libinotify
(module fsnotify
  (                                     ;Export stuff
   )
  
  (import scheme chicken foreign)
  (use files posix)

  (eval-when compile
             (if (equal? "Linux"(car (system-information)))
                 (foreign-declare "#include <linux/inotify.h>")))
  
  (define (notify-start! kind files callback)
    #f)
  )