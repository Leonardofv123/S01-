(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - ~a - ~am - ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper" :bioma "Safe Shallows"
                  :profundidade 10 :perigo :inofensiva)
   (make-criatura :nome "Stalker" :bioma "Kelp Forest"
                  :profundidade 40 :perigo :agressiva)
   (make-criatura :nome "Sand Shark" :bioma "Grassy Plateaus"
                  :profundidade 90 :perigo :agressiva)
   (make-criatura :nome "Reaper Leviathan" :bioma "Crash Zone"
                  :profundidade 200 :perigo :leviata)
   (make-criatura :nome "Ghost Leviathan" :bioma "Lost River"
                  :profundidade 650 :perigo :leviata)))

(defun main ()
  (format t "--- Scanner: catalogo completo ---~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))

  (let ((fundo (abaixo-de 100 *catalogo*)))
    (format t "--- Abaixo de 100m ---~%")
    (dolist (texto (mapcar #'descreve-criatura fundo))
      (format t "~a~%" texto))
    (format t "Total abaixo de 100m: ~a~%" (length fundo))))

(main)
