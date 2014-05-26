class Comment < ActiveRecord::Base

  enum location: %i[ 서울 인천/경기 강원도 충청북도 대전/충청남도 대구/경상북도 부산/경상남도 제주도 ]
end
