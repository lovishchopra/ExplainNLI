(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsReported (BoundSet BoundSet) Bool)
(declare-fun IsMeasuredIn (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun DoesNotInfluence (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((f BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((g BoundSet)) (exists ((b BoundSet)) (( (and (IsReported a c) (and (IsMeasuredIn a) (and (IsMeasuredIn b) (and (IsMeasuredIn d) (and (IsMeasuredIn b) (and (IsMeasuredIn f) (IsMeasuredIn g)))))))))))))) (exists ((h BoundSet)) (exists ((i BoundSet)) (DoesNotInfluence h i))))))
(check-sat)
(get-model)