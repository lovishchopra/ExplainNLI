(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SitBehind (BoundSet BoundSet) Bool)
(declare-fun DoesNotExercise (BoundSet) Bool)
(declare-fun TellToExercise (BoundSet BoundSet) Bool)
(declare-fun LoseWeight (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (SitBehind a b) (DoesNotExercise a)))) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (TellToExercise a c) (not (LoseWeight d)))))))))
(check-sat)
(get-model)