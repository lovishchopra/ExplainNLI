(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun PresentsImage (BoundSet BoundSet) Bool)
(declare-fun IsDark (BoundSet) Bool)
(declare-fun IsElected (BoundSet) Bool)
(declare-fun Represents (BoundSet BoundSet) Bool)
(declare-fun WillFlood (BoundSet) Bool)
(declare-fun IsConvicted (BoundSet BoundSet) Bool)
(declare-fun WillStay (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (PresentsImage b a) (and (IsDark a) (and (IsElected d) (Represents c a)))))))) (exists ((a BoundSet)) (exists ((f BoundSet)) (exists ((e BoundSet)) (and (WillFlood e) (and (IsConvicted f a) (WillStay f)))))))))
(check-sat)
(get-model)