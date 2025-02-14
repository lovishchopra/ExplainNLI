(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun WasInvented (BoundSet) Bool)
(declare-fun IsEverywhere (BoundSet) Bool)
(declare-fun WasBorn (BoundSet) Bool)
(declare-fun WereCreated (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (not (WasInvented a)) (IsEverywhere a))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (WasBorn b) (WereCreated a)))))))
(check-sat)
(get-model)