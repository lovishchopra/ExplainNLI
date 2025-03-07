(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSpeaking (BoundSet) Bool)
(declare-fun AreListening (BoundSet) Bool)
(declare-fun IsGivenRespect (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSpeaking a) (AreListening b)))) (exists ((c BoundSet)) (IsGivenRespect c)))))
(check-sat)
(get-model)