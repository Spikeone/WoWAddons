-- X-Perl UnitFrames
-- Author: Zek <Boodhoof-EU>
-- License: GNU GPL v3, 29 June 2007 (see LICENSE.txt)

if (GetLocale() == "koKR") then
	XPERL_MINIMAP_HELP1	= "|c00FFFFFF좌클릭|r 하시면 설정창이 나옵니다. (그리고 |c0000FF00프레임 고정|r이 풀립니다.)"
	XPERL_MINIMAP_HELP2	= "|c00FFFFFF우클릭|r 으로 버튼을 드래그해서 이동가능합니다."
	XPERL_MINIMAP_HELP3	= "\r실제 공대원: |c00FFFF80%d|r\r실제 파티원: |c00FFFF80%d|r"
	XPERL_MINIMAP_HELP4	= "\r당신은 실제 파티/공격대장 입니다."
	XPERL_MINIMAP_HELP5	= "|c00FFFFFFALT|r : X-Perl 메모리 사용량"
	XPERL_MINIMAP_HELP6	= "|c00FFFFFF+SHIFT|r : 접속 후 X-Perl 메모리 사용량"

	XPERL_MINIMENU_OPTIONS	= "설정"
	XPERL_MINIMENU_ASSIST	= "어시스트 창 표시"
	XPERL_MINIMENU_CASTMON	= "시전 현황 표시"
	XPERL_MINIMENU_RAIDAD	= "공격대 관리 표시"
	XPERL_MINIMENU_ITEMCHK	= "아이템 체커 표시"
	XPERL_MINIMENU_RAIDBUFF = "공격대 버프"
	XPERL_MINIMENU_ROSTERTEXT="명부 글자"
	XPERL_MINIMENU_RAIDSORT = "공격대 정렬"
	XPERL_MINIMENU_RAIDSORT_GROUP = "파티별 정렬"
	XPERL_MINIMENU_RAIDSORT_CLASS = "직업별 정렬"

	-- Class name localization is not too important. The only time these strings
	-- are used is when the raid frame titles need to be shown when in class sort
	-- mode AND when no players of that class have been seen. X-Perl builds an
	-- internal list of WoW localised class names as they are encountered. The WoW
	-- api function UnitClass returns both the localized and english class name.
	XPERL_LOC_CLASS_WARRIOR	= "전사"
	XPERL_LOC_CLASS_MAGE	= "마법사"
	XPERL_LOC_CLASS_ROGUE	= "도적"
	XPERL_LOC_CLASS_DRUID	= "드루이드"
	XPERL_LOC_CLASS_HUNTER	= "사냥꾼"
	XPERL_LOC_CLASS_SHAMAN	= "주술사"
	XPERL_LOC_CLASS_PRIEST	= "사제"
	XPERL_LOC_CLASS_WARLOCK	= "흑마법사"
	XPERL_LOC_CLASS_PALADIN	= "성기사"
	XPERL_LOC_CLASS_PETS	= "소환수"
	XPERL_TYPE_NOT_SPECIFIED = "무엇인가"
	XPERL_TYPE_BOSS		= "보스"
	XPERL_TYPE_RAREPLUS	= "희귀 정예"
	XPERL_TYPE_ELITE	= "정예"
	XPERL_TYPE_RARE		= "희귀"

	XPERL_SPELL_SUNDER	= "방어구 가르기"
	XPERL_SPELL_SHADOWV	= "암흑 저항력 약화"
	XPERL_SPELL_FIREV	= "화염 저항력 약화"
	XPERL_SPELL_WINTERCH	= "혹한의 추위"

-- 스테이터스
	XPERL_LOC_GHOST		= "유령"
	XPERL_LOC_FEIGNDEATH	= "죽은척하기"
	XPERL_LOC_RESURRECTED	= "부활"
	XPERL_LOC_SS_AVAILABLE	= "영혼석 있음"
	XPERL_LOC_UPDATING	= "업데이트"
	XPERL_LOC_ACCEPTEDRES	= "수락됨"
	XPERL_RAID_GROUP	= "%d 파티"
	XPERL_RAID_GROUPSHORT	= "%d파"

	XPERL_LOC_NONEWATCHED	= "발견된 사항 없음"

	XPERL_LOC_STATUSTIP	= "상태 강조: "		-- Tooltip explanation of status highlight on unit
	XPERL_LOC_STATUSTIPLIST = {
		HOT = "주기적인 치유",
		AGGRO = "어그로",
		MISSING = "당신의 직업 버프 누락",
		HEAL = "치유 중",
		SHIELD = "보호막"
	}

	XPERL_OK		= "확인"
	XPERL_CANCEL		= "취소"

	XPERL_LOC_LARGENUMDIV	= 1000
	XPERL_LOC_LARGENUMTAG	= "K"

	BINDING_HEADER_XPERL = "X-Perl 단축키 설정"
	BINDING_NAME_TOGGLERAID = "공격대 창 켜기/끄기"
	BINDING_NAME_TOGGLERAIDSORT = "공격대 정렬 직업별/파티별"
	BINDING_NAME_TOGGLERAIDPETS = "공격대 소환수창 켜기/끄기"
	BINDING_NAME_TOGGLEOPTIONS = "설정창 열기/닫기"
	BINDING_NAME_TOGGLEBUFFTYPE = "버프/디버프/없음 변경"
	BINDING_NAME_TOGGLEBUFFCASTABLE = "시전가능/해제가능 변경"
	BINDING_NAME_TEAMSPEAKMONITOR = "음성대화 현황"
	BINDING_NAME_TOGGLERANGEFINDER = "거리 측정 켜기/끄기"

	XPERL_KEY_NOTICE_RAID_BUFFANY = "모든 버프/디버프 표시"
	XPERL_KEY_NOTICE_RAID_BUFFCURECAST = "오직 시전가능/해제가능 한 버프 또는 디버프만 표시"
	XPERL_KEY_NOTICE_RAID_BUFFS = "공격대 버프 표시"
	XPERL_KEY_NOTICE_RAID_DEBUFFS = "공격대 디버프 표시"
	XPERL_KEY_NOTICE_RAID_NOBUFFS = "공격대 버프 표시안함"

	XPERL_DRAGHINT1		= "창 비율을 조절하려면 |c00FFFFFF클릭|r하세요."
	XPERL_DRAGHINT2		= "창 크기를 조절하려면 |c00FFFFFFSHIFT+클릭|r하세요."

-- 사용법
	XPerlUsageNameList	= {XPerl = "코어", XPerl_Player = "플레이어", XPerl_PlayerPet = "소환수", XPerl_Target = "대상", XPerl_TargetTarget = "대상의 대상", XPerl_Party = "파티", XPerl_PartyPet = "파티 소환수", XPerl_RaidFrames = "공격대 창", XPerl_RaidHelper = "공격대 도우미", XPerl_RaidAdmin = "공격대 관리", XPerl_TeamSpeak = "음성대화 현황", XPerl_RaidMonitor = "공격대 현황", XPerl_RaidPets = "공격대 소환수", XPerl_ArcaneBar = "아케인 바", XPerl_PlayerBuffs = "플레이어 버프", XPerl_GrimReaper = "Grim Reaper"}
	XPERL_USAGE_MEMMAX	= "UI 메모리 최대값 : %d"
	XPERL_USAGE_MODULES	= "모듈: "
	XPERL_USAGE_NEWVERSION	= "*새로운 버전"
	XPERL_USAGE_AVAILABLE	= "%s |c00FFFFFF%s|r : 다운로드 가능"

	XPerl_DefaultRangeSpells.ANY = {item = "두꺼운 황천매듭 붕대"}
end

XPERL_LOC_CLASS_PETSHUNTER	= XPERL_LOC_CLASS_HUNTER.." "..XPERL_LOC_CLASS_PETS
XPERL_LOC_CLASS_PETSWARLOCK = XPERL_LOC_CLASS_WARLOCK.." "..XPERL_LOC_CLASS_PETS
