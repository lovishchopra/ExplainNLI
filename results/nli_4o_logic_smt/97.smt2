(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SpentInLibrary (BoundSet BoundSet BoundSet) Bool)
(declare-fun AreAbout (BoundSet BoundSet) Bool)
(declare-fun AreBunk (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (SpentInLibrary a b c)))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (AreAbout d e) (AreBunk d)))))))
(check-sat)
(get-model)