(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Failed (BoundSet BoundSet) Bool)
(declare-fun AtFault (BoundSet) Bool)
(declare-fun HasToSteal (BoundSet) Bool)
(declare-fun HasToSurvive (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (Failed b a))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((d BoundSet)) (=> (AtFault d) (Failed e f))))) (and (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (HasToSteal g) (Failed h i))))) (forall ((l BoundSet)) (forall ((k BoundSet)) (forall ((j BoundSet)) (=> (HasToSurvive j) (Failed k l)))))))) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (AtFault c) (and (HasToSteal a) (HasToSurvive a))))))))
(check-sat)
(get-model)