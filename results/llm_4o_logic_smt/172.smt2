(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun RunsAround (BoundSet BoundSet) Bool)
(declare-fun IsRacing (BoundSet) Bool)
(declare-fun IsRacingAgainst (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsWearing a b) (RunsAround a c))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (forall ((f BoundSet)) (=> (RunsAround f g) (IsRacing h))))) (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (RunsAround i j) (IsRacingAgainst k l)))))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsRacing d) (IsRacingAgainst d e)))))))
(check-sat)
(get-model)