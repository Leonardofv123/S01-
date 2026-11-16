(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica :nome (garota-magica-nome g)
                      :escuridao (if (>= quantidade (garota-magica-escuridao g))
                                     0
                                     (- (garota-magica-escuridao g) quantidade))
                      :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((grupo (list (make-garota-magica :nome "Mami" :escuridao 35 :bruxas 42)
                      (make-garota-magica :nome "Sayaka" :escuridao 80 :bruxas 7)
                      (make-garota-magica :nome "Kyoko" :escuridao 50 :bruxas 30)))
         (novo-grupo (cons (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 0)
                           grupo)))
    (format t "--- Joias da Alma ---~%")
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (format t "--- Novo contrato ---~%")
    (format t "Grupo antigo: ~a de escuridao~%" (escuridao-total grupo))
    (format t "Grupo novo: ~a de escuridao (~a garotas)~%"
            (escuridao-total novo-grupo) (length novo-grupo))

    (let* ((sayaka (second grupo))
           (limpa (purifica sayaka 60)))
      (format t "--- Semente da Aflicao ---~%")
      (format t "~a original: ~a~%"
              (garota-magica-nome sayaka) (garota-magica-escuridao sayaka))
      (format t "~a purificada: ~a~%"
              (garota-magica-nome limpa) (garota-magica-escuridao limpa)))))

(main)
