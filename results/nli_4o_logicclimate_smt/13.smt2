(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun EvaporatesAs (BoundSet BoundSet) Bool)
(declare-fun IsMorePowerfulAsGreenhouseGas (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (EvaporatesAs b a))) (exists ((a BoundSet)) (exists ((c BoundSet)) (IsMorePowerfulAsGreenhouseGas a c))))))
(check-sat)
(get-model)