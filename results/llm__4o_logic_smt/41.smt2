(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun MakesLessPollutionThan (BoundSet BoundSet) Bool)
(declare-fun LessOfPollutionProblemThan (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (MakesLessPollutionThan a b))) (exists ((e BoundSet)) (exists ((c BoundSet)) (LessOfPollutionProblemThan c e))))))
(check-sat)
(get-model)