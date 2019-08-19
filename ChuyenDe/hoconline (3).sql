-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 18, 2019 lúc 06:38 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoconline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihoc`
--

CREATE TABLE `baihoc` (
  `ma_bh` int(11) NOT NULL,
  `link_bh` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_bh` varchar(999) COLLATE utf8_unicode_ci NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `thoi_luong` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoc_thu` bit(1) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baihoc`
--

INSERT INTO `baihoc` (`ma_bh`, `link_bh`, `ten_bh`, `ma_kh`, `thoi_luong`, `hoc_thu`, `updated_at`, `created_at`) VALUES
(3, '4001.mp4', 'Phần 1: Giới thiệu về zumba fitness', 4, '20', b'1', NULL, NULL),
(4, '4001.mp4', 'Phần 2: Các bước nhảy cơ bản cho một bài tập zumba', 4, '15', b'1', NULL, NULL),
(5, '4001.mp4', 'Phần 3: Những bước nhảy zumba cho cơ thể săn chắc', 4, '15', b'0', NULL, NULL),
(6, '4001.mp4', 'Phần 4: Nhảy cùng với những vũ điệu sôi động', 4, '15', b'0', NULL, NULL),
(7, '4001.mp4', 'Phần 5: Những bài tập đốt cháy mỡ bụng', 4, '10', b'0', NULL, NULL),
(8, '5001.mp4', 'Phần 1: Lựa chọn dòng mỹ phẩm và dụng cụ phù hợp', 5, '5', b'1', NULL, NULL),
(9, '5001.mp4', 'Phần 2: Nhận diện da mặt và khuôn mặt điển hình', 5, '10', b'0', NULL, NULL),
(10, '5001.mp4', 'Phần 3: Các bước trang điểm cá nhân', 5, '10', b'0', NULL, NULL),
(11, '5001.mp4', 'Phần 4: Tuyệt chiêu giúp khuôn mặt bạn rạng ngời', 5, '10', b'0', NULL, NULL),
(12, '5001.mp4', 'Phần 5: Hướng dẫn trang điểm theo từng phong cách', 5, '10', b'0', NULL, NULL),
(13, '3001.mp4', 'Phần 1: Giới thiệu cơ bản về sáo trúc', 3, '8', b'1', NULL, NULL),
(14, '3001.mp4', 'Phần 2: Những kỹ năng cơ bản cần thiết để chơi sáo', 3, '10', b'0', NULL, NULL),
(15, '3001.mp4', 'Phần 3: Hướng dẫn cách luyện tập sáo trúc và ngón', 3, '10', b'0', NULL, NULL),
(16, '3001.mp4', 'Phần 4: Áp dụng thực tế', 3, '20', b'0', NULL, NULL),
(17, '3001.mp4', 'Phần 5: Tổng kết khóa học', 3, '5', b'0', NULL, NULL),
(18, '6004.mp4', 'Phần 1: Giới thiệu chung về khóa học', 6, '5', b'1', NULL, NULL),
(19, '6004.mp4', 'Phần 2: Nhóm bài về ngực', 6, '10', b'0', NULL, NULL),
(20, '6004.mp4', 'Phần 3: Nhóm bài phần mông', 6, '10', b'0', NULL, NULL),
(21, '6004.mp4', 'Phần 4: Các bài tổ hợp chân', 6, '10', b'0', NULL, NULL),
(22, '6004.mp4', 'Phần 5: Nhóm bài phần eo', 6, '10', b'0', NULL, NULL),
(23, '9001.mp4', 'Phần 1: NGHIÊN CỨU THỊ TRƯỜNG ONLINE', 9, '20', b'0', NULL, NULL),
(24, '9001.mp4', 'Phần 2: TỰ TAY XÂY DỰNG WEBSITE THEO NỀN TẢNG GOOGLE ĐỂ STARTUP', 9, '20', b'0', NULL, NULL),
(25, '9001.mp4', 'Phần 3: 11 BƯỚC ĐƯA WEBSITE LÊN TOP GOOGLE MÀ KHÔNG CẦN PHẢI QUẢNG CÁO', 9, '15', b'0', NULL, NULL),
(26, '9001.mp4', 'Phần 4: CÁC CÔNG CỤ HỖ TRỢ ĐÁNH GIÁ DO LƯỜNG VÀ LÀM SEO HIỆU QUẢ', 9, '15', b'0', NULL, NULL),
(27, '9001.mp4', 'Phần 5: CHIẾN LƯỢC TĂNG DOANH THU VÀ LỢI NHUẬN', 9, '15', b'0', NULL, NULL),
(28, '10001.mp4', 'Phần 1: Tổng quan', 10, '5', b'1', NULL, NULL),
(29, '10001.mp4', 'Phần 2: 6 Bước khởi sự doanh nghiệp', 10, '25', b'0', NULL, NULL),
(30, '10001.mp4', 'Phần 3: Sử dụng đòn bẩy để Start up doanh nghiệp', 10, '20', b'0', NULL, NULL),
(31, '10001.mp4', 'Phần 4: Tổng kết và các sai lầm thường gặp khi khởi nghiệp', 10, '15', b'0', NULL, NULL),
(32, '10001.mp4', 'Phần 5: Tổng kết khoá học', 10, '5', b'0', NULL, NULL),
(33, '7001.mp4', 'Phần 1: Tổng quan', 7, '8', b'1', NULL, NULL),
(34, '7001.mp4', 'Phần 2: Thu hút khách hàng tiềm năng', 7, '10', b'0', NULL, NULL),
(35, '7001.mp4', 'Phần 3: Tăng tỉ lệ chốt sales', 7, '15', b'0', NULL, NULL),
(36, '7001.mp4', 'Phần 4: Bí quyết tăng doanh số trên mỗi đơn hàng', 7, '15', b'0', NULL, NULL),
(37, '7001.mp4', 'Phần 5: Chiến lược xây dựng Fan cuồng', 7, '15', b'0', NULL, NULL),
(38, '8001.mp4', 'Phần 1: Đánh giá và phân tích sản phẩm', 8, '10', b'1', NULL, NULL),
(39, '8001.mp4', 'Phần 2: Phân tích & Lập kế hoạch triển khai kênh Marketing phù hợp với sản phẩm', 8, '15', b'0', NULL, NULL),
(40, '8001.mp4', 'Phần 3: Viết bài chuẩn SEO để quảng cáo', 8, '10', b'0', NULL, NULL),
(41, '8001.mp4', 'Phần 4: Triển khai quảng cáo Google adwords cho từ khoá sản phẩm', 8, '10', b'0', NULL, NULL),
(42, '8001.mp4', 'Phần 5: Tiến hành lập Fanpage quảng cáo sản phẩm', 8, '20', b'0', NULL, NULL),
(43, '12001.mp4', 'Phần 1: Nhập môn Email Marketing', 12, '10', b'1', NULL, NULL),
(44, '12001.mp4', 'Phần 2: Chiến lược tìm kiếm danh sách khách hàng', 12, '10', b'0', NULL, NULL),
(45, '12001.mp4', 'Phần 3: Chiến lược kinh doanh bằng Email Marketing', 12, '9', b'0', NULL, NULL),
(46, '12001.mp4', 'Phần 4: Thực hành bằng công cụ Getresponse', 12, '15', b'0', NULL, NULL),
(47, '12001.mp4', 'Phần 5: Lộ trình 09 ngày để có 1000 data khách hàng tiềm năng', 12, '10', b'0', NULL, NULL),
(48, '11001.mp4', 'Phần 1: Tổng quan về Facebook', 11, '10', b'0', NULL, NULL),
(49, '11001.mp4', 'Phần 2: Xây dựng và phát triển Fanpage', 11, '20', b'1', NULL, NULL),
(50, '11001.mp4', 'Phần 3: Các dạng quảng cáo cơ bản trên Facebook', 11, '15', b'0', NULL, NULL),
(51, '11001.mp4', 'Phần 4: Hình ảnh và bài viết trong quảng cáo Facebook', 11, '10', b'0', NULL, NULL),
(52, '11001.mp4', 'Phần 5: Quảng cáo Facebook cơ bản', 11, '25', b'0', NULL, NULL),
(53, '14001.mp4', 'Phần 1: Tổng quan về Kinh Doanh trên Facebook', 14, '10', b'1', NULL, NULL),
(54, '14001.mp4', 'Phần 2: Thuật toán Facebook và những điều cần lưu ý', 14, '15', b'0', NULL, NULL),
(55, '14001.mp4', 'Phần 3: Bán hàng trên Facebook Cá Nhân', 14, '10', b'0', NULL, NULL),
(56, '14001.mp4', 'Phần 4: Xây dựng hệ thống bán hàng tự động trên Fanpage', 14, '15', b'0', NULL, NULL),
(57, '14001.mp4', 'Phần 5: Bán hàng trên Group và những điều cần lưu ý', 14, '10', b'0', NULL, NULL),
(58, '13001.mp4', 'Phần 1: Tổng quan về landing page/website', 13, '10', b'1', NULL, NULL),
(59, '13001.mp4', 'Phần 2: Tạo landing page trong 1 nốt nhạc', 13, '15', b'1', NULL, NULL),
(60, '13001.mp4', 'Phần 3: Viết nội dung cho landing page', 13, '15', b'0', NULL, NULL),
(61, '13001.mp4', 'Phần 4: Landing page backend (Bonus)', 13, '15', b'0', NULL, NULL),
(62, '13001.mp4', 'Phần 5: Nhân bản hóa website', 13, '10', b'0', NULL, NULL),
(63, '18001.mp4', 'Phần 1: IELTS SPEAKING Part 1 - Tiêu chí đánh giá điểm của Ielts speaking', 18, '5', b'1', NULL, NULL),
(64, '18001.mp4', 'Phần 2: IELTS SPEAKING Part 1 - Hướng dẫn Paraphrase', 18, '10', b'0', NULL, NULL),
(65, '18001.mp4', 'Phần 3: IELTS SPEAKING Part 1 - Cách mở rộng câu trả lời', 18, '15', b'0', NULL, NULL),
(66, '18001.mp4', 'Phần 4: IELTS SPEAKING Part 1 - Các câu trả lời mẫu', 18, '15', b'0', NULL, NULL),
(67, '18001.mp4', 'Phần 5: IELTS SPEAKING Part 2 - Cách xây dựng bố cục', 18, '10', b'0', NULL, NULL),
(68, '16001.mp4', 'Phần 1: Phát âm tiếng Anh giọng Mỹ', 16, '13', b'1', NULL, NULL),
(69, '16001.mp4', 'Phần 2: Từ vựng theo chủ đề nói kết hợp cách đặt câu hỏi', 16, '15', b'0', NULL, NULL),
(70, '16001.mp4', 'Phần 3: Cụm từ diễn đạt theo chủ đề kết hợp ngữ pháp', 16, '15', b'0', NULL, NULL),
(71, '16001.mp4', 'Phần 4: Tình huống diễn đạt thực tế', 16, '15', b'0', NULL, NULL),
(72, '16001.mp4', 'Phần 5: INTERVIEW', 16, '5', b'0', NULL, NULL),
(73, '15001.mp4', 'Phần 1: Giới thiệu', 15, '5', b'1', NULL, NULL),
(74, '15001.mp4', 'Phần 2: Các chủ đề', 15, '30', b'0', NULL, NULL),
(75, '15001.mp4', 'Phần 3: Mẹo Tips', 15, '20', b'0', NULL, NULL),
(76, '15001.mp4', 'Phần 4: Làm sao để thực hành hàng ngày', 15, '10', b'0', NULL, NULL),
(77, '15001.mp4', 'Phần 5: Interview', 15, '5', b'0', NULL, NULL),
(78, '17001.mp4', 'Phần 1: Nhập môn tiếng Nhật', 17, '10', b'1', NULL, NULL),
(79, '17001.mp4', 'Phần 2: Giao tiếp trong tiếng Nhật', 17, '15', b'0', NULL, NULL),
(80, '17001.mp4', 'Phần 3: Những mẫu ngữ pháp căn bản', 17, '15', b'0', NULL, NULL),
(81, '17001.mp4', 'Phần 4: Các dạng bài tập thường gặp', 17, '15', b'0', NULL, NULL),
(82, '17001.mp4', 'Phần 5: Những tình huống đàm thoại căn bản', 17, '20', b'0', NULL, NULL),
(83, '19001.mp4', 'Phần 1: Làm quen với máy ảnh\r\n Bài 1: Khái niệm về nhiếp ảnh', 19, '30', b'1', NULL, NULL),
(84, '19001.mp4', 'Phần 2: Làm quen với máy ảnh\r\n Bài 1: Khái niệm về nhiếp ảnh', 19, '30', b'0', NULL, NULL),
(85, '19001.mp4', 'Phần 3: Làm quen với máy ảnh\r\n Bài 1: Khái niệm về nhiếp ảnh', 19, '30', b'0', NULL, NULL),
(86, '19001.mp4', 'Phần 4: Làm quen với máy ảnh\r\n Bài 1: Khái niệm về nhiếp ảnh', 19, '30', b'0', NULL, NULL),
(87, '19001.mp4', 'Phần 5: Làm quen với máy ảnh\r\n Bài 1: Khái niệm về nhiếp ảnh', 19, '30', b'0', NULL, NULL),
(88, '20001.mp4', ' Bài 1: Nguyên lý quang học\r\n Bài 2: Ống kính máy ảnh: tiêu cự, khẩu độ, vùng ảnh rõ\r\n Bài 3: Các chế độ và tính năng chụp trên máy ảnh\r\n\r\n', 20, '30', b'1', NULL, NULL),
(89, '20001.mp4', ' Bài 1: Nguyên lý quang học\r\n Bài 2: Ống kính máy ảnh: tiêu cự, khẩu độ, vùng ảnh rõ\r\n Bài 3: Các chế độ và tính năng chụp trên máy ảnh\r\n\r\n', 20, '30', b'0', NULL, NULL),
(90, '21001.mp4', 'Bài 1: Tìm hiểu về giao diện ADOBE PREMIERE PRO CC 2017\r\n Bài 2: Các công cụ tinh chỉnh cơ bản trong Adobe Premiere Pro CC 2017', 21, '75', b'1', NULL, NULL),
(91, '22001.mp4', ' Bài 1: Khái niệm về nhiếp ảnh\r\n Bài 2: Lịch sử về nhiếp ảnh\r\n Bài 3: Vai trò của nhiếp ảnh', 22, '30', b'1', NULL, NULL),
(92, '23001.mp4', 'Bài 1: Giới thiệu và các lưu ý trước khi tập\r\nBài 2: Làm mềm cơ\r\nBài 3: Lưu thông khí huyết', 23, '40', b'1', NULL, NULL),
(93, '24001.mp4', 'Bài 1: Giới thiệu và các lưu ý trước khi học\r\nBài 2: Hướng dẫn thở đúng cách\r\nBài 3: Những tư thế căn bản\r\n\r\n', 24, '40', b'1', NULL, NULL),
(94, '25001.mp4', ' Bài 1: Chuẩn bị trước khóa học\r\n Bài 2: Khởi động: Đánh thức cột sống\r\n Bài 3: Khởi động: Làm nóng thân dưới\r\n ', 25, '25', b'1', NULL, NULL),
(95, '26001.mp4', ' Bài 1: Nguyên nhân dẫn đến việc chúng ta bị bệnh nhiều đến vậy\r\n Bài 2: Các triệu chứng trong cơ thể của chúng ta có ý nghĩa gì?\r\n Bài 3: Cơ chế của việc bị sốt, cảm cúm, ho, tiêu chảy', 26, '40', b'1', NULL, NULL),
(97, '28001.mp4', 'Bài 1: Giới thiệu về Maya và mục tiêu của khóa học\r\nBài 2: Giao Diện của Maya Bài 3: Cách thao tác với camera trong không gian 3D\r\nBài 4: Cách di chuyển, quay, phóng to thu nhỏ vật thể 3D\r\nBài 5: Cách quản lý hiện thị vật thể, lưu tài liệu và mở tài liệu\r\n \r\n', 28, '45', b'1', NULL, NULL),
(98, '29001.mp4', 'Bài 1: Giới thiệu khóa học\r\nBài 2: Cài đặt công cụ photoshop và illustrator\r\nBài 3: Không gian làm việc của photoshop\r\nBài 4: Các phương pháp tách layer trong photoshop\r\nBài 5: Công cụ lasso và marquee trong xử lý layer', 29, '60', b'1', NULL, NULL),
(99, '30001.mp4', 'Bài 1: Làm quen với môi trường 3DSMAX\r\nBài 2: Tạo, hiệu chỉnh hình khối - Phần 1\r\nBài 3: Tạo, hiệu chỉnh hình khối - Phần 2\r\nBài 4: Nhóm lệnh Select và Transform - Phần 1\r\nBài 5: Nhóm lệnh Select và Transform - Phần 2', 30, '43', b'1', NULL, NULL),
(100, '31001.mp4', 'Bài 1: Làm quen với thiết kế\r\nBài 2: Chuẩn bị\r\nBài 3: Tầm quan trọng của Layout\r\nBài 4: Cách tạo Grid trong thiết kế\r\nBài 5: Các công cụ hỗ trợ chính trong Power Point', 31, '30', b'1', NULL, NULL),
(101, '32001.mp4', 'Bài 1: Bảo vệ nội dung trong Excel không cho sửa\r\nBài 2: Đặt mật khẩu cho file Excel\r\nBài 3: Đặt tên cho vùng dữ liệu\r\nBài 4: Tạo liên kết sheet - liên kết tập tin trong Excel\r\nBài 5: Sử dụng công cụ Add-In để thêm các hàm tự định nghĩa vào Excel', 32, '43', b'1', NULL, NULL),
(102, '33001.mp4', 'Bài 1: Giới thiệu tổng quan về Excel 2010\r\nBài 2: Tạo mới và làm việc với Workbook\r\nBài 3: Các thao tác với bảng tính\r\nBài 4: Các phím tắt thông dụng trong Excel\r\nBài 5: Các thủ thuật với copy/paste', 33, '23', b'1', NULL, NULL),
(103, '34001.mp4', 'Bài 1: Giới thiệu sơ lược về phần mềm Microsoft Excel\r\nBài 2: Giao diện làm việc và các thao tác cơ bản trên Microsoft Excel\r\nBài 3: Cách soạn thảo và trình bày trên Microsoft Excel\r\nBài 4: Các thao tác nhanh trên Micorsoft Excel\r\nBài 5: Hệ thống phím tắt thông dụng trên Microsoft Excel', 34, '33', b'1', NULL, NULL),
(108, 'PewPew vãi cả LOL.mp4', 'Bai 1', 39, NULL, b'1', '2019-08-18', '2019-08-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `ma_gv` int(11) NOT NULL,
  `ten_gv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota_gv` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_gv` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`ma_gv`, `ten_gv`, `mota_gv`, `anh_gv`, `updated_at`, `created_at`) VALUES
(2, 'Thành Toe', 'Thành Toe Guitar tự hào là đơn vị hàng đầu trong lĩnh vực đào tạo các loại nhạc cụ như Guitar – Piano…. Cùng với đó Thành Toe cũng là một địa chỉ tin cậy cho các bạn trong việc chọn mua các sản phẩm nhạc cụ chất lượng cao với giá cả hợp lý nhất. Thành Toe mong các bạn sẽ có những trải nghiệm tuyệt vời khi đến với chúng tôi. Xin cảm ơn.', 'thanhtoe.jpg', NULL, NULL),
(4, 'Đinh Linh', 'NSUT Đinh Linh, sinh ra và trưởng thành trong một gia đình có truyền thống âm nhạc dân tộc-Cha là NSUT Đinh Thìn \r\n\r\n- Tốt nghiệp đại học âm nhạc tại Nhạc viện Hà Nội, khoa nhạc cụ dân tộc bộ môn sáo trúc ( 1987 ) \r\n\r\n- Là diễn viên của nhà hát ca múa nhạc Việt Nam (1987-1992), nhà hát ca múa nhạc dân tộc Bông Sen (1992-2009).\r\n\r\n- Giám Đốc công ty TNHH MTV Tổ Chức Biễu Diễn Trúc Mai.\r\n\r\nThầy đã gặt hái được rất nhiều thành tựu như:\r\n\r\n- 1983 giải B độc tấu sáo trúc tại liên hoan ca múa nhạc toàn quốc tại Hà Nội.\r\n\r\n- 1988 huy chương vàng độc tấu sáo trúc tại liên hoan biễu diễn nhạc cụ dân tộc toàn quốc.\r\n\r\n- 1998 giải nhì độc tấu sáo trúc tại cuộc thi biễu diễn nhạc cụ dân tộc tại Hà Nội.\r\n\r\n- 2005 huy chương vàng - độc tấu sáo trúc tại liên hoan ca múa nhạc toàn quốc tổ chức tại Tp Hồ Chí Minh.\r\n\r\n- 2007 được phong tăng danh hiệu NGHỆ SĨ ƯU TÚ.\r\n\r\nBên cạnh đó thầy còn tham gia các chuyến lưu diễn và giao lưu văn hóa nước ngoài, mang bộ môn nghệ thuật Sáo Trúc đến gần mọi người hơn.', 'dinhlinh.jpg', NULL, NULL),
(5, 'Đỗ Nghiêm Túc', 'Huấn luyện viên ĐỖ NGHIÊM TÚC:\r\n\r\n-Tốt nghiệp trường Đại học Văn Hóa TP.HCM, chuyên ngành Quản lý sự kiện văn hóa.\r\n\r\n-Thành tích nổi bật:\r\n\r\n2009: Là Bí thư Đoàn P6 Q4.\r\n\r\n2007: Đạt danh hiệu HotVteen do tạp chí VTM tổ chức.\r\n\r\n2004-2007: Kiện tướng Quốc gia môn Sport Aerobic.\r\n\r\n2. Kinh nghiệm làm việc:\r\n\r\n- 2012 đến nay: Huấn luyện viên môn Zumba tại SaigonDance, Platinum Global, Universal Yoga.\r\n\r\n- Anh đã tham gia các chương trình giành cho sức khỏe và vóc dáng rất nội bật như: chương trình Sáng Phương Nam trên VTV9, Các Bác Sĩ Nói Gì trên HTV7, Khám Phá Cùng Teen trên THTPCT.\r\n\r\n-2007 anh đã từng là biên đạo và là diễn viên múa chuyên nghiệp tại các sân khấu lớn nhỏ trong thành phố, ngoài tỉnh thành, ngoài nước , những chương trình truyền hình: chương trình Những dòng sông hò hẹn, Âm vang miền Đông, Âm vang miền Tây, Nhịp cầu âm nhạc, Âm nhạc của tôi, Hương Xưa, biểu diễn tại sân khấu Trống Đồng, sân khấu 126, Campuchia, Thái Lan…\r\n\r\n• Biên đạo và dàn dựng cho các tổ chức: THCS ', 'donghiemtuc.jpg', NULL, NULL),
(6, 'Tân Nguyễn', 'Chuyên viên make up Tân Nguyễn được mệnh danh là phù thủy MC, anh là người chịu trách nhiệm làm cho các MC của những chương trình nổi tiếng trở nên tự tin rạng rỡ hơn trên sân khấu.\r\n\r\nHiện nay anh là chuyên viên make up chính của kênh SCTV10 ngoài ra anh còn hợp tác với nhiều kênh khác như HTV 7,HTV 9,SCTV4,STAR SCTV11…\r\n\r\nAnh là người đã từng tham gia trang điểm tại các đấu trường sắc đẹp và các cuộc thi lớn như: Nữ hoàng doanh nhân, Người đẹp công sở, Nét đẹp sinh viên, Người dẫn chương trình truyền hình.\r\n\r\nBên cạnh đó anh cũng là giám khảo khách mời cho chương trình \"Tôi là người dẫn chương trình\" của cung văn hóa lao động tổ chức\r\n\r\nAnh luôn cập nhật các xu hướng làm đẹp mới nhất để nâng cao kĩ năng là tay nghề của mình. \r\n\r\nĐược mệnh danh là một phù thủy make up nhưng anh luôn chia sẻ với mọi người rằng \" Nét đẹp tự nhiên là nét đẹp bền vững\" cũng chính vì vậy anh đã hướng tới những xu hương trang điểm nhẹ nhàng tự nhiên nhưng bạn vẫn tỏa sáng nếu bạn nắm bắt được những bí', 'tannguyen.jpg', NULL, NULL),
(7, 'Túc Nghiêm Đỗ', 'Huấn luyện viên Túc Nghiêm Đỗ:\r\n\r\n-Tốt nghiệp trường Đại học Văn Hóa TP.HCM, chuyên ngành Quản lý sự kiện văn hóa.\r\n\r\n-Thành tích nổi bật:\r\n\r\n2009: Là Bí thư Đoàn P6 Q4.\r\n\r\n2007: Đạt danh hiệu HotVteen do tạp chí VTM tổ chức.\r\n\r\n2004-2007: Kiện tướng Quốc gia môn Sport Aerobic.\r\n\r\n2. Kinh nghiệm làm việc:\r\n\r\n- 2012 đến nay: Huấn luyện viên môn Zumba tại SaigonDance, Platinum Global, Universal Yoga.\r\n\r\n- Anh đã tham gia các chương trình giành cho sức khỏe và vóc dáng rất nội bật như: chương trình Sáng Phương Nam trên VTV9, Các Bác Sĩ Nói Gì trên HTV7, Khám Phá Cùng Teen trên THTPCT.\r\n\r\n-2007 anh đã từng là biên đạo và là diễn viên múa chuyên nghiệp tại các sân khấu lớn nhỏ trong thành phố, ngoài tỉnh thành, ngoài nước , những chương trình truyền hình: chương trình Những dòng sông hò hẹn, Âm vang miền Đông, Âm vang miền Tây, Nhịp cầu âm nhạc, Âm nhạc của tôi, Hương Xưa, biểu diễn tại sân khấu Trống Đồng, sân khấu 126, Campuchia, Thái Lan…\r\n\r\n• Biên đạo và dàn dựng cho các tổ chức: THCS ', 'tucnghiemdo.jpg', NULL, NULL),
(8, 'Đỗ Minh Hà', 'Giám đốc Hệ thống Hà Spa gồm hơn 40 spa cao cấp ở 14 tỉnh thành trên cả nước Đỗ Minh Hà\r\n\r\nChuyên gia 12 năm kinh nghiệm điều trị da cao cấp, được cấp bằng chăm sóc da quốc tế của Học viện HIU - Hoa Kỳ\r\n\r\nKinh nghiệm giảng dạy: Đào tạo hơn 40 giám đốc chi nhánh và hàng ngàn học viên của các chi nhánh, đào tạo cả những học viên của các hệ thống khác. Đã học nhiều khóa học đỉnh cao trong nước và các nước Hàn Quốc, Nhật Bản, Mỹ, Dubai...', 'dominhha.png', NULL, NULL),
(9, 'Manny Trần', 'Giảng viên: Anh Manny Trần - Tốt nghiệp tại Học viện Pyramind- San Francisco - Học viện âm nhạc điện tử hàng đầu thế giới Anh là đồng sáng lập Học viện MCM ( MCMA) tại Việt nam. \r\n\r\nSố lượng học viên đã/ đang đào tạo offline: 140+', 'mannytran.png', NULL, NULL),
(10, 'Linh Vy', 'Tôi là Linh Vy, tác giả cuốn sách “Nặn Đất Sét”, cũng là người tạo ra các khóa học: sáng tạo cùng đất sét.\r\n\r\nTôi đào tạo các kỹ năng phát triển tư duy sáng tạo cho trẻ em và dạy các khóa học tạo hình từ đất sét cho mọi lứa tuổi như là hoa, tranh, khung ảnh, móc khóa, các đồ trang trí bằng đất sét .....Với kinh nghiệm 15 năm trong lĩnh vực tạo hình bằng đất sét, tôi đã đi rất nhiều nơi để đào tạo cho các trường, các trung tâm phát triển kỹ năng cho trẻ em. Tôi đã dạy cho hơn 1000 học viên,  đã giúp cho họ có tư duy tốt hơn, học hành hiệu quả hơn. Ngoài ra tôi còn đào tạo cho hơn 100 người có công ăn việc làm từ kỹ năng nặn đất sét.\r\n\r\nKhách hàng của tôi, là trẻ em, các bạn trẻ, doanh nhân, là những người muốn phát triển các kỹ năng và quan tâm đến sự phát triển của con cái mình một cách tốt nhất.\r\n\r\nCác đối tác đã hợp tác với tôi trong thời gian qua:\r\n\r\n+ Công ty Cổ phần Phát triển nguồn Nhân lực HOD – Hiện thực giấc mơ xanh – thuộc Viện nghiên cứu cho trẻ thông minh sớm VSK. Tomato,\r', 'linhvy.png', NULL, NULL),
(11, 'Nguyễn Tấn Trung', 'Thạc Sĩ Kinh Tế, Cử Nhân Luật, Luật Gia TPHCM\r\n\r\n- Giám Đốc Trung Tâm Đào Tạo Quốc Tế Âu Viêt\r\n\r\n- Giảng viên tại trường Đại Học Văn Hiến\r\n\r\n- Giảng viên tại trường Đại Học Hutech TP.HCM\r\n\r\n- Giảng viên trường Trung Cấp Nghề Quang Trung\r\n\r\n- Giảng viên tại trường Trung Cấp Việt Úc\r\n\r\n- Giảng viên tại trường Trung Cấp Khôi Việt\r\n\r\n- Giám đốc công ty TNHH Đào Tạo Dịch Vụ Âu Việt\r\n\r\n- Thành viên Hội Ảo Thuật Thế Giới', 'nguyentantrung.jpg', NULL, NULL),
(12, 'Sweet Media', 'Sweet Media chuyên sản xuất các khóa Online với nhiều thể loại khác nhau như Nhảy hiện đại, tự tập Fitness, Beatbox, Dance Cardio ... thu hút được nhiều học viên đăng ký tham gia.\r\n\r\nCác khóa học Online được thiết kế cẩn thận và hướng vào đối tượng chưa học bao giờ, lộ trình rõ ràng, từ cơ bản đến nâng cao.\r\n\r\nSweet Media luôn tập trung phát triển chất lượng và dịch vụ chăm sóc khách hàng, đưa ra những sản phẩm tốt nhất dành đến cho khách hàng', 'sweetmedia.jpg', NULL, NULL),
(13, 'Đào Thị Lệ Huyền', 'Là chuyên viên PR Marketing trong 8 năm, đã từng giữ vị trí Trưởng phòng HCNS trong 2 năm, nhưng niềm đam mê ẩm thực đã khiến chị từ bỏ công việc và dành toàn bộ thời gian cho lĩnh vực này, đặc biệt là mảng bánh nghệ thuật với nguyên liệu rau câu. Cho đến nay chị đã có kinh nghiệm trên 3 năm đứng lớp và làm nghề. Trong thời gian đó chị không ngừng nâng cao kiến thức và kỹ năng của mình thông qua việc tầm sư học đạo những giảng viên có tiếng nhất trong và ngoài nước.\r\n\r\nChị đã mở trên 100 lớp học và trực tiếp hướng dẫn hơn 400 học viên đến từ Tp.HCM, Hà Nội, các tỉnh thành trong cả nước và học viên nước ngoài đến từ Úc, Mỹ, Phần Lan, Singapore.\r\n\r\nTrong cuộc thi rau câu toàn quốc do chuyên gia từ Úc về VN tổ chức, sản phẩm của chị đã đạt top những sản phẩm lọt vào vòng thi trực tiếp tại tp.HCM và được đánh giá là một trong những sản phẩm có chất lượng và thẩm mỹ cao nhất.\r\n\r\nĐể hỗ trợ miễn phí cho các học viên của mình, Giảng viên lập Group mang tên \"Thạch 3D hoa quả - Online & Free\" đ', 'daothilehuyen.jpg', NULL, NULL),
(14, 'Phạm Thành Long', 'Luật sư - Diễn giả Phạm Thành Long người sáng lập Công ty Luật Gia Phạm.\r\n\r\nVới hơn 15 năm kinh nghiệm trong chuyên ngành Luật Kinh doanh và Luật Sở hữu trí tuệ, ông Phạm Thành Long đã giúp đỡ hơn 34.000 lượt doanh nhân phát triển công việc kinh doanh của họ.\r\n\r\nTrong thời gian gần đây, với vai trò là người nói chuyện trước công chúng, Luật sư Phạm Thành Long đang là một \"hiện tượng\" thu hút hàng ngàn Doanh nhân tham gia mỗi chương trình của ông. Các học viên tham dự chương trình đều tạo nên những đột phá trong cuộc đời của họ, đặc biệt là tạo ra những thay đổi mạnh mẽ, suy nghĩ tích cực để có một cuộc sống tốt hơn.', 'phamthanhlong.jpg', NULL, NULL),
(15, 'Vương Mạnh Hoàng', 'Với 12 năm kinh nghiệm Marketing online, Vương Mạnh Hoàng sở hữu chuỗi cửa hàng bán lẻ gốm sứ battrang.info lớn nhất Việt Nam, sở hữu 03 công ty công nghệ triển khai Marketing online.\r\n\r\nNằm trong Top các chuyên gia Marketing Online giàu kinh nghiệm, Vương Mạnh Hoàng là người kết hợp giữa kiến thức Marketing hàn lâm và kỹ thuật Marketing online thực tiễn để tạo nên phương pháp bán hàng hiệu quả.\r\n\r\nVương Mạnh Hoàng hiện là giảng viên đào tạo Marketing online cho các tập đoàn lớn: VTC, CMC, FPT... các trường ĐH: Ngoại thương, ĐH Quốc gia, Học viện Bưu chính viễn thông...\r\n\r\nNhững kiến thức được chia sẻ tại đây là những kinh nghiệm thực tiễn đã được triển khai thành công cho hoạt động kinh doanh của trên 2000 doanh nghiệp.', 'vuongmanhhoang.jpg', NULL, NULL),
(16, 'David Thanh', 'Chuyên gia Digital Marketing David Thanh \r\n\r\n- Giám đốc học viện INET HCM\r\n\r\n- Kinh nghiệm làm kinh doanh online hơn 8 năm.\r\n\r\n- Hơn 3 năm Kinh nghiệm giảng dạy các bộ môn Digital Marketing (MOM, SEO, Email Marketing, Mobile Marketing, Thiết Kế Web chuẩn SEO) tại INET Academy. \r\n\r\n- Chuyên gia tư vấn tên miền và thương hiệu số tại INET Corporation.\r\n\r\n- Đạo diễn tổ chức, và truyền thông các chương trình qui mô lớn từ 500-1000 người như Internet Startup, Domain Day và Gala Domainer.', 'davidthanh.jpg', NULL, NULL),
(17, 'Lê Minh Tuấn', 'Người đã truyền cảm hứng cho hàng ngàn doanh nhân thay đổi cách kinh doanh của họ, tạo ra sự thay đổi mạnh mẽ.\r\n\r\nLê Minh Tuấn sở hữu 3 công ty khách nhau hoạt động trong lĩnh vực Nội thất, thương mại, đào tạo.\r\n\r\nSau nhiều lần phá sản Lê Minh Tuấn đã rút ra những bài học đắt giá và nguyên lý để thành công trong kinh doanh, Lê Minh Tuấn đem những kiến thức đó truyền cảm hứng cho những doanh nhân khác tạo lên sự thay đổi đột phá cho doanh nghiệp.\r\n\r\nLà người tư vấn cho các doanh nghiệp về hệ thống bán hàng và đào tạo kỹ năng bán hàng.\r\n\r\nGiám đốc hỗ trợ BNI Hà Nội 6 (Tổ chức kết nối doanh nhân toàn cầu)\r\n\r\nĐã tham gia chương trình CEO “Chìa khóa thành công” trên VTV 3 năm 2013\r\n\r\nLà Trainer truyền cảm hứng mạnh mẽ giúp hơn 5000 người thay đổi thành công.\r\n\r\nĐã từng học trực tiếp từ những bậc thầy trên thế về bán hàng như Blair Singer, jordan belfort, T.Harv Eker...vv', 'leminhtuan.png', NULL, NULL),
(18, 'Hồ Ngọc Cương', 'Giảng viên đã có hơn 8 năm kinh nghiệm làm Facebook Marketing và trên 5 năm kinh nghiệm đào tạo, giảng dạy, tư vấn cho các cá nhân, tổ chức, doanh nghiệp về lĩnh vực Facebook Marketing.\r\n\r\nHiện tại, anh đang là Admin nhóm Học quảng cáo facebook online - chia sẻ kiến thức liên tục cho hơn 50.000 thành viên.\r\n\r\nĐược đánh giá là 1 trong những Chuyên gia Facebook Marketing với phong cách giảng dạy dễ hiểu và nhiệt tình nhất để các học viên dễ dàng áp dụng kiến thức vào thực tế làm việc.', 'hongoccuong.jpg', NULL, NULL),
(19, 'Hán Quang Dự', 'Giảng viên Hán Quang dự hiện là chuyên gia đào tạo về phát triển bản thân và phát triển kinh doanh\r\n\r\nHiện tại, anh đang là giám đốc đào tạo công ty GCC Việt Nam.\r\n\r\nLà tác giả các quyển sách điện tử: 30s tán đổ khách hàng, 08 bước telesales chinh phục khách hàng, 10s bán hàng siêu đẳng, phương pháp học tiếng anh của người ngu nhất hành tinh, Xây dựng hệ thống bán hàng tự động. \r\n\r\nĐang là cố vấn đào tạo, kiêm cố vấn chiến lược kinh doanh cho hàng chục các doanh nghiệp ở khắp 2 miền Nam Bắc\r\n\r\nĐược mọi người biết đến như một người truyền cảm hứng mãnh liệt với các chương trình đào tạo nổi tiếng đang được tổ chức tại Hà Nội và Hồ Chí Minh: Bán hàng như hơi thở, Email marketing dành cho chủ doanh nghiệp, Nghệ thuật viết sách, xây dựng hệ thống bán hàng tự động, Thuyết trình bán hàng...', 'hanquangdu.png', NULL, NULL),
(20, 'Trương Văn Hòa', 'Giảng viên Trương Văn Hòa, chuyên gia Marketing, đã khởi nghiệp chỉ với 250k đi vay, đến nay anh đã có trên 5 năm kinh nghiệm kinh doanh, Marketing.\r\n\r\nAnh đã đào tạo marketing và kinh doanh cho hơn 2000 nhà kinh doanh trên khắp Việt Nam.\r\n\r\nAnh là người Sáng lập cộng đồng Lamgiau247.com, top 1 website Việt Nam về phát triển cá nhân, Học làm giàu, kiến thức kinh doanh.\r\n\r\nĐồng thời là người sáng lập và Giám Đốc điều hành công ty cổ phần PDS VIỆT.', 'truongvanhoa.jpg', NULL, NULL),
(21, 'Nguyễn Huỳnh Giao', 'Giảng viên Nguyễn Huỳnh Giao với hơn 5 năm kinh nghiệm trong lĩnh vực Marketing Online, đào tạo hơn 1000 người về Marketing Online.\r\n\r\nĐã chốt những đơn hàng lớn trên 500 Triệu các sản phẩm truyền thống bằng cách sử dụng Internet.\r\n\r\nGiám đốc Công ty TNHH TMDV Song Long Phước chuyên phân phối, Xuất Khẩu hàng tiêu dùng của các tập đoàn như DKSH,Uniliver,Oreo,Orion,Nestle...…http://songlongphuoc.com\r\n\r\nGiảng viên lớp Kinh Doanh trên Internet Cung Văn Hóa Lao Động, Nhà Văn Hóa Thanh Niên Hồ Chí Minh.\r\n\r\n5 Năm kinh nghiệm tổ chức các sự kiện đỉnh cao cho các chuyên gia quốc tế như: Mr.Vas NLP , Ts Biswaroop Roy Chowdhury , Thiền Ngọc Phân Coach life…_NLP Practitioner.', 'nguyenhuynhgiao.jpg', NULL, NULL),
(22, 'Victoria Duong', 'Victoria Duong hiện tại là giảng viên Tiếng Anh tại GCC Việt Nam (Global Citizen Company Việt Nam) - Một trong những công ty hàng đầu Việt Nam trong lĩnh vực đào tạo. \r\n\r\nLà 1 trainer trẻ tuổi và nhiệt huyết, cô đã truyền lửa cho nhiều học viên trở nên yêu thích Tiếng Anh. \r\n\r\nVới sự kết hợp nhiều phương pháp học mới và khả năng tạo động lực cho học viên, cô đã giúp rất nhiều người chinh phục được tiếng Anh giao tiếp bằng cách đơn giản hóa nhất có thể trong từng bài học và trong cách giảng dạy. \r\n\r\nĐi lên từ một học sinh kém tiếng Anh, cô truyền đạt bằng trải nghiệm của mình vì vậy học viên sẽ cảm thấy gần gũi và dễ dàng tiếp thu đặc biệt đối với đối tượng mất gốc và người mới bắt đầu.', 'victoriaduong.jpg', NULL, NULL),
(23, 'Ruby Thảo Trần', 'Ruby Thảo Trần nhận bằng thạc sỹ Lý Luận và phương pháp giảng dạy tiếng Anh của Southern Queensland Australia University\r\n\r\nCô có trên 7 năm kinh nghiệm giảng dạy tại các ngôi trường danh tiếng như New York center, Úc châu, Âu Mỹ, Úc Anh.\r\n\r\nĐồng thời Ruby Thảo Trần cũng là người thành lập ra cơ sở học ngoại ngữ tại nhà KungFu English - Ruby\'s House với hơn 31 khóa học và hơn 3000 học viên đã tham gia học tính đến thời điểm hiện tại.\r\n\r\nGiúp cho rất nhiều các bạn học viên sở hữu điểm cao trong các kỳ thi Anh văn TOEIC, TOEFL, IELTS… cũng như khả năng giao tiếp của những bạn đã được cô đào tạo cải thiện tốt hơn trước rất nhiều. ', 'rubythaotran.jpg', NULL, NULL),
(24, 'Thanh Trúc', 'Giảng viên Thanh Trúc tốt nghiệp trường Đại học Ngoại Ngữ Tin Học TP.HCM, chuyên ngành Nhật ngữ. Cô sở hữu bằng chứng chỉ về lớp văn hóa doanh nghiệp Nhật của Công ty Pasonatech chứng nhận. Kinh nghiệm 3 năm giảng dạy tại các Trung tâm ngoại ngữ, công ty, trường THPT…\r\n\r\nHiện tại Thanh Trúc vẫn tiếp tục theo con đường giảng dạy bộ môn Nhật Ngữ và giảng dạy tại nhiều trung tâm tiếng Nhật.\r\n\r\nChú trọng vào việc sử dụng phương pháp giảng dạy hiện đại kết hợp với giáo trình được biên soạn kĩ càng, cùng với kỹ năng truyền đạt và nắm bắt tâm lý học viên, giúp học sinh có thể nắm bắt kiến thức một cách nhanh nhất.\r\n\r\nLuôn cập nhật tài liệu và đề thi mới nhất để học viên dễ dàng đạt điểm cao khi thi các chứng chỉ Tiếng Nhật cần thiết.', 'thanhtruc.jpg', NULL, NULL),
(25, 'Trương Thị Lan Anh', 'Ms Trương Thị Lan Anh hiện đang là Admin của Group Ielts speaking với hơn 17.000 thành viên.\r\n\r\n8.0 Ielts speaking, có 2 năm kinh nghiệm giảng dạy Ielts speaking.\r\n\r\nCô đã giúp rất nhiều học viên đạt điểm cao trong kỳ thì Ielts, 97% học viên đạt trên 6.0 speaking. ', 'truongthilananh.jpg', NULL, NULL),
(26, 'Hoàng Viết Thắng', 'Thầy Hoàng Viết Thắng là  thành viên của nhóm nhiếp ảnh trẻ thành phố Hồ Chí Minh. Năm 2016 đã có nhiều bài báo viết về thầy giáo hot boy mê phượt Hoàng Viết Thắng như Yeah1.com, Mực Tím... Năm này cũng là năm tấm ảnh \" Cánh Đồng Tuổi Thơ\" được Phuot.vn chọn để triển lãm toàn quốc và bán đấu giá làm từ thiện. Đã đặt chân tới mọi miền đất của tổ quốc cùng với 10 năm kinh nghiệm trong việc chơi ảnh, xử lý hình ảnh và một điều quan trọng chính là niềm đam mê nhiếp ảnh. Hoàng Viết Thắng sẽ chia sẻ với các bạn những kĩ năng chụp hình và hậu kì thực tế nhất, dễ hiểu, dễ áp dụng nhất.\r\n\r\nNgoài ra, Thầy Hoàng Viết Thắng với kinh nghiệm hơn 10 năm giảng dạy kĩ năng viết chữ đẹp\r\n\r\nThầy là một trong những giáo viên trẻ đầy tâm huyết với con chữ với học trò và là một thấy giáo rất đa tài.\r\n\r\nBên cạnh đó thầy còn tập huấn cho giáo viên nhiều trường và hàng nghìn học viên viết chữ đẹp trong suốt thời gian qua.\r\n\r\nLà một người dành phần lớn thời gian cho công việc truyền con chữ nên thầy luôn cải t', 'hoangvietthang.jpg', NULL, NULL),
(27, 'Phí Công Huy', 'Giảng viên Khoa Đa phương tiện, phụ trách môn học Kỹ thuật Nhiếp ảnh và Kỹ thuật Quay phim – Học viện Công nghệ Bưu chính Viễn thông.\r\n\r\n• Tham gia thỉnh giảng môn Kỹ thuật Nhiếp ảnh tại trường Đại học Mỹ thuật Việt Nam.\r\n\r\n• Tốt nghiệp Đại học Oxford Brookes – 2007\r\n\r\n• Tốt nghiệp cao học, Monash University – 2009\r\n\r\n• Trưởng nhóm tổ chức và giám sát chất lượng cuộc thi Nhiếp ảnh PPOC 2013 - Học viện Công nghệ Bưu chính Viễn thông\r\n\r\n• Tham gia làm giám khảo trong cuộc thi Nhiếp ảnh \"Thông tin và Truyền thông - Một chặng đường\" - Bộ thông tin và truyền thông\r\n\r\n• Trưởng nhóm giám sát chất lượng về bảo trợ truyền thông hình ảnh cho cuộc thi \"FBA Innovation Challenge 2015\" - Enactus FTU Hanoi', 'phiconghuy.jpg', NULL, NULL),
(28, 'Nguyễn Ngọc Quang', 'Giảng viên Học viện Báo chí, hiện anh là cộng tác của đài truyền hình và hãng hàng không Vietnam Airline, trực tiếp tranning cho team media của FPT và các tổ chức khác, với số học viên nhiều nhất là 40 / 1 lớp.\r\n\r\nAnh được đào tạo bài bản về Nhiếp ảnh và Điện ảnh 6 năm tại Pháp\r\n\r\nAnh có 10 năm trong nghề sản xuất các sản phẩm về hình ảnh\r\n\r\nTham gia các cuộc triển lãm ảnh tại Paris.\r\n\r\nĐạt giải nhất trong cuộc thi làm phim tài liệu của cục điện ảnh về chủ đề nhiếp ảnh.', 'nguyenngocquang.jpg', NULL, NULL),
(29, 'Hy Đức Tiến', 'Hy Đức Tiến\r\n\r\nNhiếp ảnh gia\r\n\r\nCó quá trình trên 5 năm tham gia vào lĩnh vực chụp ảnh\r\nĐối tác chụp ảnh cho các sự kiện của NXB Kim Đồng, các trường mầm non như MN Phú Thượng, MN Ben Ben Tây Hồ, MN An Dương Vương \r\nSáng lập ra chương trình: \"Sảng khoái cuối tuần\" giúp hàng nghìn gia đình có tư duy tích cực gắn kết với nhau để cùng nhau giúp các con kiểm soát công nghệ, tăng cường sức khỏe và lưu giữ những khoảnh khắc hồn nhiên.', 'hyductien.jpg', NULL, NULL),
(30, 'Master Trần', 'Giảng viên Trần Đình Dần (Master Trần) - Founder của Acamotion - nơi chia sẻ kiến thức đồ họa truyền thông.\r\n\r\nChuyên gia Internet Marketing với hơn 3 năm kinh nghiệm hậu kỳ trong ngành đồ họa chuyển động, phim kỹ xảo.', 'mastertran.jpg', NULL, NULL),
(31, 'Nguyễn Mạnh Hà', '5 Năm kinh nghiệm làm 3D mô phỏng và các hệ thống thực tại ảo\r\n\r\n4 Năm làm 3D game, hoạt hình\r\n\r\nAnh đã có nhiều năm mở lớp đào tạo online. Hỗ trợ cộng đồng người sử dụng Blender tại Việt Nam\r\n\r\nHiện tại, anh đang giảng dạy trực tiếp tại các công ty kiến trúc, làm phim hoạt hình', 'nguyenmanhha.jpg', NULL, NULL),
(32, 'Hồ Nhật Anh', 'Tác giả truyện tranh.\r\nHọa sĩ vẽ page fiction characters.\r\nCác tác phẩm nổi tiếng đã tham gia: 8 ngày của Nene; chuyện con heo,...\r\nHọa sĩ vẽ minh họa tại Kênh 14.\r\nSở hữu Fanpage có hơn 14000 lượt theo dõi, đăng tải các nội dung liên quan đến bộ môn vẽ truyện tranh.', 'honhatanh.jpg', NULL, NULL),
(33, 'Nguyễn Hiếu', 'Chuyên gia Yoga Nguyễn Hiếu đã có hơn 12 năm nghiên cứu và giảng dạy Yoga tại các trung tâm và đã huấn luyện cho hàng nghìn học viên khắp Việt Nam và thế giới.\r\n\r\nChị là Đại sứ Yoga Việt Nam do Trung tâm Unesco Phát triển Văn hóa và Thể thao phong tặng. \r\n\r\nChị đã thiết kế rất nhiều chương trình Yoga trực tuyến, sở hữu kênh  đào tạo Yoga online lớn nhất Việt Nam.\r\n\r\nHiện tại, Nguyễn Hiếu đang là tổng giám đốc công ty Zenlife Yoga Việt Nam và là huấn luyện viên trưởng cho chương trình đào tạo giáo viên Yoga.\r\n\r\nHiện nay, dù đã gần 40 tuổi và có 2 con lớn, Chuyên gia Yoga Nguyễn Hiếu vẫn sở hữu một cơ thể cân đối trẻ trung, khỏe mạnh và dẻo dai như ở tuổi đôi mươi, với vòng eo 60 cm là niềm ao ước của mọi phụ nữ ở độ tuổi này.', 'nguyenhieu.jpg', NULL, NULL),
(34, 'Milena Nguyễn', 'Milena Nguyễn người sáng lập ra Soulful Garden - nơi phụ nữ tìm thấy vẻ đẹp và tình yêu qua Yoga, Pilates, Thiền, và Nghệ Thuật.\r\n\r\nChứng chỉ quốc tế về giảng dạy Yoga\r\n\r\nGiảng dạy Yoga và Thiền tại Malaysia, Singapore, và 3 thành phố lớn tại Việt Nam: Hà Nội - Đà Nẵng - Sài Gòn\r\n\r\nNgười Việt trẻ đầu tiên được chọn vào ban điều hành cấp cao của AIESEC quốc tế - tổ chức phát triển tiềm năng lãnh đạo trẻ lớn nhất thế giới.\r\n\r\nTrải nghiệm và làm việc tại 20 quốc gia trên thế giới\r\n\r\nDiễn giả và giảng viên thường thấy trong các sự kiện phát triển bản thân của giới trẻ và cộng đồng trong và ngoài nước\r\n\r\nBlogger và cây bút truyền cảm hứng về sức khoẻ, tình yêu, và cuộc sống trên mạng xã hội. Các câu chuyện và chia sẻ của chị đã xuất hiện trên rất nhiều báo.', 'milena.jpg', NULL, NULL),
(35, 'Alex Nguyễn', 'Alex Vinh Giám đốc trung tâm Mint Centre - Trung tâm ứng dụng và đào tạo Yoga - Trị liệu tự nhiên\r\n\r\nHuấn luyện viên Yoga Quốc tế nhiều năm kinh nghiệm, Giảng dạy các môn Triết lý Yoga, Kỹ thuật Yoga, Phong cách Yoga…\r\n\r\nThạc sĩ tài chính tại Trường University Collegue Dublin, Ireland, Singapore\r\n\r\nAlex Vinh cũng là đồng sáng lập trang toiyeuyoga.com – một trang web cộng đồng những người đam mê yoga, với những bài viết, kiến thức Yoga hữu ích.\r\n\r\nLà người ham học hỏi và kinh nghiệm nhiều năm thực hành các bộ môn Thái Cực Quyền, Khí Công, Yoga và Thiền, Alex Vinh mê nghiên cứu những thứ thuộc về văn hóa phương Đông, cộng thêm những hiểu biết sâu sắc về những tiến bộ phong cách của Phương Tây.\r\n\r\nAlex Vinh có nhiều năm kinh nghiệm giảng dạy tại các doanh nghiệp trong nước như Agribank, Viettinbank, tổng công ty xây dựng Hàng không ACCA, Apec Group…. Cũng như ngoài nước : trường quốc tế Rmit, một số cá nhân người Úc, Mỹ làm việc tại Việt Nam và các trung tâm lớn tại Hà Nội.\r\n\r\nCác học vi', 'alex.jpg', NULL, NULL),
(36, 'Đậu Thị Nhung', 'Kinh nghiệm:\r\n\r\n -  Tác giả sách 21 Ngày Thực Hành NLP\r\n\r\n   Health Coach tốt nghiệp IIN - Hoa Kỳ \r\n\r\n -  Đào tạo trên 20000 học viên về phát triển bản thân áp dụng NLP & những chương trình dinh dưỡng ứng dụng cho cộng đồng.\r\n\r\n - Trainer NLP. CEO Thương hiệu OTOMI ( công ty TNHH TM Mộc). \r\n\r\n - Giám đốc đào tạo Cty SCT.\r\n\r\n - Phiên dịch cho những chuyên gia đào tạo hàng đầu thế giới Mr Vas, Tiến sĩ Bác Sĩ Kỷ lục gia Biswaroop Roy Chowhury.  ', 'dauthinhung.jpg', NULL, NULL),
(38, 'Lê Anh Tuấn', 'Giám đốc công ty thiết kế kiến trúc VOS. Người sáng lập cộng đồng đồ họa VietCG\r\nGiám đốc công ty thiết kế kiến trúc VOS Lê Anh Tuấn, đồng thời là người sáng lập cộng đồng đồ họa VietCG.\r\n\r\nAnh có 11 năm kinh nghiệm thiết kế đồ họa công nghiệp, comic và kiến trúc.\r\n\r\nNgoài ra, Lê Anh Tuấn còn tham gia giảng dạy và gia công đồ họa 2D, 3D từ 2008 tại VietCG Team - Đơn vị đã tham gia vào nhiều dự án của các tổ chức lớn như truyền hình VTC, Tập đoàn Vingroup, Tập đoàn Bimgroup, Tập đoàn BĐS Hải Phát, Tập đoàn FLC... VietCG Team có các tác phẩm được đăng trên tạp chí đồ họa uy tin như tạp chí đồ họa châu Á InCG Magazine và tạp chí quốc tế 3DArtist Magazine.', 'leanhtuan.jpg', NULL, NULL),
(39, 'Nguyễn Đức Việt', 'Tốt nghiệp đại học Bách Khoa Hà Nội, khóa 49, khoa Công nghệ phần mềm.\r\n\r\nGiảng viên Thiết kế web tại FPT - Arena. Nguyễn Đức Việt\r\n\r\nVới 5 năm kinh nghiệm giảng dạy và làm việc trong lĩnh vực thiết kế web, anh đã đào tạo hàng nghìn học viên đã tốt nghiệp và làm việc trong lĩnh vực thiết kế, đặc biệt là thiết kế web chuyên nghiệp.\r\n\r\nTham gia rất nhiều dự án web cho FPT và các dự án về thiết kế web dựa trên ngôn ngữ lập trình mã nguồn mở.', 'nguyenducviet.jpg', NULL, NULL),
(40, 'Khổng Minh Phương', 'Giảng viên Khổng Minh Phương Có 10 năm kinh nghiệm làm việc và giảng dạy trong lĩnh vực đồ họa 2D và 3D.\r\n\r\n2012- đến nay : Cộng tác giảng dạy tại các trung tâm ARENA , 1 số trường Đại học Quốc Gia , Kỹ thuật Quân sự bộ môn : 2D, 3D ( AI , PS , ID, Premie, AE, Audion, 3Dsmax, Maya )\r\n\r\n2012 : Làm việc và giảng dạy tại VTC Academy bộ môn 3D \r\n\r\n2011 : Làm việc tại VMG với vai trò 2D game UI Desgin\r\n\r\n2010 : Làm việc tại VTC online với vai trò 2D Artist game UI Design trong dự án Squad game\r\n\r\n2009 : Làm việc tại Punch Entertainment với vai trò 2D Artist game UI Design\r\n\r\n2008: làm việc tại Curious Development với vai trò 3D 2D Leader Artist game\r\n\r\n2007 : Làm viêc tại FPT – Fsoftware dự án của Nhật Bản với vai trò 3D Leader modeler , texture\r\n\r\n2006 : Làm việc cho công ty 3DVN với vai trò 3D modeler , texture , animation', 'khongminhphuong.jpg', NULL, NULL),
(41, 'Trần Quang Hải', 'Giảng viên Trần Quang Vũ hiện đang là chuyên gia giảng dạy trong lĩnh vực Visual Thinking - Tư duy hình ảnh.\r\n\r\nAnh đã có hơn 4 năm kinh nghiệm trong việc nghiên cứu và ứng dụng Visual Thinking vào học tập, công việc và cuộc sống.\r\n\r\nHiện tại, Anh đang là là Nhà đào tạo - đã từng giảng dạy tại Vietfuture, Prepo, Topica... và cho nhiều đối tác khác.\r\n\r\nTừ thực tế công việc diễn thuyết của mình, anh Trần Quang Vũ hiểu rằng một trong những yếu tố làm nên thành công tại các buổi đào tạo là việc tương tác giữa giảng viên và học viên bằng những câu hỏi và hiệu ứng do Slide mang lại. \r\n\r\nAnh hiểu được một slide thu phục lòng người cần phải làm gì, và cần đưa thông tin như thế nào cho khán giả dễ theo dõi mang đến cho học viên những khóa học thực tế nhất.', 'tranquanghai.jpg', NULL, NULL),
(42, 'Nguyễn Quang Vinh', 'Giảng viên Nguyễn Quang Vinh đào tạo doanh nghiệp, P. GĐ - Công Ty TNHH Công Nghệ Truyền Thông Metech - MeTech.com.vn\r\n\r\nChuyên gia giảng dạy, tư vấn cho nhân viên văn phòng tại các doanh nghiệp, công ty.\r\n\r\nHiện nay, anh đang là Phó giám đốc công ty TNHH Công Nghệ Truyền Thông MeTech.\r\n\r\nTư vấn truyền thông cho Th.s Tâm Lý Nguyễn Hoàng Khắc Hiếu.\r\n\r\nTư vấn chiến lượt phát triển và Makerting cho hàng chục trang fanpage facebook Holcim, Doublemint. Đồng thời, anh cũng đã quản lý và cố vấn cho nhiều website, fanpage, facebook...\r\n\r\nBiên soạn giáo trình, tài liệu học đa dạng: Slide bài giảng, bài tập thực hành, clip hướng dẫn. Kinh nghiệm giảng dạy các chuyên môn: Tin học A, Tin học B, Chuyên viên tin học văn phòng, Thiết kế website,… theo chương trình chuẩn ĐH Khoa học tự nhiên.\r\n\r\nĐứng Top các từ khóa về đào tạo tin học trên google, youtube, facebook với các từ khóa như: Đào tạo tin học AB, Đào tạo tin học A, Đào tạo tin học B, video tin học B văn phòng, …', 'nguyenquangvinh.jpg', NULL, NULL),
(43, 'Lê Quang Hải', 'Giảng viên tại nhiều trung tâm uy tín về Công nghệ thông tin\r\nGiảng viên Lê Quang Hải có 10 năm kinh nghiệm làm việc với Excel\r\n\r\nGiảng dạy ở nhiều trung tâm có uy tín về Công nghệ thông tin\r\n\r\nĐào tạo và tư vấn cho nhân viên nhiều công ty lớn về việc sử dụng và các ứng dụng Excel để đơn giản hóa công việc.', 'lequanghai.jpg', NULL, NULL),
(44, 'Nguyễn Thành Đông', 'Thạc sĩ Nguyễn Thành Đông Kiểm toán viên - KPMG (2011). Ứng dụng Microsoft Excel phân tích, xử lý dữ liệu, trình bày báo cáo chuyên nghiệp.\r\n\r\nChuyên viên đầu tư (2011) - Công ty Cổ phần Đầu tư Naka. Ứng dụng VBA của Microsoft Excel tổng hợp số liệu báo cáo tài chính của hơn 600 công ty niêm yết, phân tích và ra quyết định đầu tư.\r\n\r\nGiảng viên Tài chính, Ngân hàng - HITU. Ứng dụng Microsoft Excel vào giảng dạy các môn tin học chuyên ngành Tài chính, Ngân hàng.', 'nguyenthanhdong.jpg', NULL, NULL),
(48, 'Mạc Thị Quỳnh Nga', NULL, '67609094_116003923060352_1638443295149391872_o.jpg', '2019-08-18', '2019-08-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `ma_kh` int(11) NOT NULL,
  `ten_kh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_thieu` varchar(9999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uudiem` varchar(9999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_kh` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_luong` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_gt` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sosao` int(11) DEFAULT NULL,
  `gia_ban` int(11) DEFAULT NULL,
  `gia_giam` int(11) DEFAULT NULL,
  `phan_tram` int(11) DEFAULT NULL,
  `ma_gv` int(11) DEFAULT NULL,
  `ma_loai` int(11) DEFAULT NULL,
  `mo_ta` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`ma_kh`, `ten_kh`, `gioi_thieu`, `uudiem`, `anh_kh`, `thoi_luong`, `link_gt`, `sosao`, `gia_ban`, `gia_giam`, `phan_tram`, `ma_gv`, `ma_loai`, `mo_ta`, `updated_at`, `created_at`) VALUES
(3, 'Tự học thổi sáo trúc trong 21 ngày', 'Vì âm thanh hay, dễ học, nhẹ nhàng  sáo trúc đã trở thành một trong những nhạc cụ phổ thông nhất ớ châu Á.\r\n\r\nSáo trúc ngày nay có nguồn gốc từ cây sáo có lịch sử từ 7000 năm về trước. Loại sáo trúc ban đầu được làm từ một ống lau sậy ruột rỗng, khi có gió hoặc luồng hơi đi vào sẽ tạo độ rung, phát ra âm thanh. Nhờ vào sự cải tiến sáng tạo của các nghệ nhân mà từ một ống lau sậy đơn giản đã trở thành một cây sáo trúc có thể hòa tấu, độc tấu, và trở thành một môn nghệ thuật như ngày nay.\r\n\r\nTrước đây sáo trúc chỉ tồn tại ở các vùng  nông thôn, làng quê yên bình và học theo cách truyền miệng, nhưng ngày này, các nghệ nhân đã đưa nó thanh một bộ môn nghệ thuật được giảng dạy tại các trường văn hóa nghệ thuật, tiếng sáo trúc không chỉ đi vào lòng người dân Việt Nam mà còn theo chân các nghệ sĩ biểu diễn ở các sân khấu quốc tế.', 'Cách chọn sáo trúc sao cho phù hợp và chất lượng nhất cho người mới học thổi sáo mà không cần tốn quá nhiều chi phíKỹ năng cơ bản cần thiết để chơi sáo như: cách hít thở, cách luyện hơi, cách luyện ngón không cần sáo, cách cầm sao, cách đặt môi,phát âm, cách phi lưỡi, rung hơi...Tự tin trổ tài thổi sáo của mình trong những buổi văn nghệThể hiện tài năng với nhiều bản nhạc khác nhau', 'saotruc-dinhlinh.jpg', '90', 'saotruc-dinhlinh.mp4', 4, 330000, NULL, NULL, 4, 6, 'Khóa học với lộ trình 21 ngày sẽ giúp bạn nắm chắc những kỹ năng cơ bản cần thiết để chơi sáo, giúp tự tin trổ tài thổi sáo của mình trong những buổi văn nghệ.', NULL, NULL),
(4, '10 Ngày eo thon dáng đẹp cùng zumba', 'Bạn đang cảm thấy mệt mỏi với công việc bộn bề hằng ngày? Hay muốn giảm cân, muốn tập thể dục cho khỏe khoắn? Hãy tạm gác lại ý nghĩ tham gia các trung tâm tập GYM với những chiếc máy tập cồng kềnh và vô thức. Thay vào đó, chúng ta cùng thử hòa mình vào những giai điệu Châu Mỹ Latin sôi động với những động tác đơn giản dễ thực hiện của bộ môn khiêu vũ hình thể Zumba, chắn chắn bạn sẽ cảm thấy sảng khoái, vui tươi sau những phút tập mệt vã mồ hôi.\r\n\r\nZumba còn rất trẻ so với những bộ môn khiêu vũ khác. Dù sinh sau đẻ muộn nhưng với sức cuốn hút không thể cưỡng lại của mình, Zumba đã chinh phục mọi người ở hầu hết các quốc gia, không phân biên giới, tuổi tác, giới tính. Do tính chất đơn giản không chú trọng về mặt kỹ thuật, Zumba phù hợp với tất cả mọi người. Bạn chỉ cần tập theo Huấn luyện viên, giải phóng cơ thể, không quan tâm tư thế đúng chuẩn hay không, tự do đưa mình vào giai điệu cuồng nhiệt của nền nhạc Latin. Bạn sẽ đắm chìm trong không khí lễ hội của các nước Mỹ Latin mà giải tỏa phần nào mệt mỏi lo toan của cuộc sống.\r\n\r\nZumba không chỉ giảm áp lực tinh thần, nó còn giúp làm tiêu hao một lượng lớn calories (600-1000 calo/giờ) tùy vào tuổi tác và cường độ luyện tập. Ngoài ra với các động tác uyển chuyển tác động nhiều vào phần bụng, hông, đùi… bạn sẽ nhận ra cơ thể ngày càng cân đối hơn sau những giờ tập luyện vã mồ hôi.\r\n\r\nZUMBA! VỪA TẬP VỪA CHƠI, CÒN GÌ THÚ VỊ HƠN THẾ?', 'Đốt cháy năng lượng từ 600 - 1000 calo trong thời gian ngắn\r\nCơ thể của mình khỏe khoắn hơn, thân hình thon gọn hơn. \r\nCảm giác tự tin hơn và xả stress nhanh chóng\r\nTinh thần sảng khoái để có thể làm việc và học tập hiệu quả.', '10ngayzumba.jpg', '120', '10ngayzumba.mp4', 5, 550000, NULL, NULL, 5, 6, 'Đốt cháy 600-1000 calo trở thành người có thân hình chắc khoẻ cùng với khoá học 10 Ngày eo thon dáng đẹp cùng zumba online. 1 tinh thần sảng khoái để có thể làm việc và học tập hiệu quả.', NULL, NULL),
(5, 'Nghệ thuật trang điểm cá nhân đẹp tự nhiên', 'Trang điểm đẹp tự nhiên bí quyết thu hút mọi ánh nhìn\r\n\r\n“Không có người phụ nữ xấu chỉ có người phụ nữ không biết làm đẹp”  Điều này luôn đúng trong nghệ thuật làm đẹp. Hiện nay, đối với phụ nữ, trang điểm chính là những thao tác thần kỳ giúp các nàng tôn lên nét đẹp của mình và trở nên rạng rỡ hơn bao giờ hết.\r\n\r\nDường như việc trang điểm đã trở thành một trong những điều không thể thiếu đối với phái đẹp hiện đại, bạn có 1 vóc dáng chuẩn đẹp? một phong cách thời trang thời thượng? nhưng lại không tìm được cho mình 1 phong cách trang điểm thích hợp để tự tin bước ra phố. Sẽ chẳng còn lo lắng hay bận tâm khi học khóa học này bạn sẽ:\r\n\r\nTự trang điểm cho bạn nổi bật hơn mà không phải vất vả nhờ các chuyên gia\r\n\r\nNắm bắt được các lối trang điểm khiến bạn trở thành tâm điểm của bữa tiệc\r\n\r\nGiúp bạn rạng rỡ giữa phố phường khi chọn tone dạo phố thích hợp\r\n\r\nBạn sẽ thay đổi chính mình khi học được cách biến hóa bản thân đến hoàn hảo\r\n\r\nHãy đến với khóa học \"Nghệ thuật trang điểm cá nhân đẹp tự nhiên\" của chuyên viên trang điểm Tân Nguyễn các bạn nhé!', 'Không còn bối rối mỗi khi ra đường nên chọn phong cách nào cho phù hợp.\r\nTtự mình trang điểm cho mình nổi bật hơn trong 1 bữa tiệc hay sự kiện\r\nKhông phải vất vả ngồi hàng giờ để chờ chuyên gia trang điểm giúp bạn.\r\nThay đổi các phong cách phù hợp bằng bí quyết của chuyên gia', 'nghethuattrangdiem-tannguyen.png', '90', 'nghethuattrangdiem-tannguyen.mp4', 3, 340000, NULL, NULL, 6, 6, 'Bạn mệt mỏi vì chờ đợi trang điểm, bạn không biết mình phù hợp với phong cách trang điểm nào. Khóa học này giúp bạn đẹp hơn mỗi ngày với nghệ thuật trang điểm đẹp tự nhiên.', NULL, NULL),
(6, 'Sexy Dance - Tạo đường cong quyến rũ', 'Sexy Dance - chỉ cần nghe đến cái tên thì ai cũng có thể hình dung ra được đây là một môn học đầy sức quyến rũ. Quyến rũ từ những động tác cơ bản như lắc hông, đi sóng, đánh ngực đến cả những động tác nhỏ nhất như cách hất tóc, cách vuốt tay, … Tất cả đều làm nên sự gợi cảm không thể cưỡng cho những ai yêu thích bộ môn này.\r\n\r\nNếu bạn mong muốn có một hình thể quyến rũ, thì bạn không thể bỏ lỡ khóa học Sexy Dance này. Khóa học gồm 30 động tác Sexy dance cơ bản, có độ khó tăng dần, tập trung vào các bộ phận như ngực, eo, mông.\r\n\r\nNhững động tác xoay ngực, lắc mông, các tư thế đứng sexy sẽ làm cho ngực, lưng, mông và đùi của bạn mệt mỏi vô cùng nhưng bạn sẽ bất ngờ về hình dáng sexy của mình với vòng 1, vòng 3 đầy đặn, săn chắc, và vòng eo thon gọn, gợi cảm.  Ngoài ra, bạn có thể tự do thể hiện mình trên các loại nhạc đang phổ biến hiện nay tại các sàn nhảy disco, các quán Bar, vũ trường,….', 'Có được dáng chuẩn ngay sau những buổi học đầu tiên\r\nTạo các đường cong quyến rũ, dẻo dai, giúp bạn tự tin, gợi cảm hơn\r\nTăng sự đầy đặn, săn chắc của vòng 1, vòng 3, đôi chăn thon gọn và khỏe khoắn\r\nTự tin nhảy trên bất cứ nền nhạc nào: Pop, Disco, Rap, Hiphop....', 'sexydance-tucnghiemdo.jpg', '60', 'sexydance-tucnghiemdo.mp4', 2, 280000, NULL, NULL, 7, 6, 'Sở Hữu Đường Cong Quyến rũ - Vòng eo chuẩn với khoá học Sexy Dance - Lớp học nhảy hiện đại, Tăng sự đầy đặn, săn chắc của vòng 1, vòng 3, đôi chân thon gọn và khỏe khoắn', NULL, NULL),
(7, '30 Tuyệt chiêu gia tăng doanh số ngay lập tức', 'Doanh số bán hàng luôn là mục tiêu hàng đầu của bất kỳ cá nhân, doanh nghiệp kinh doanh bởi nó quyết định tới sự tồn tại và phát triển của chính cá nhân, doanh nghiệp đó.\r\n\r\nTuy nhiên, làm cách nào để gia tăng doanh số bán hàng lại là một câu hỏi khó, thường trực đối với các nhà kinh doanh.\r\n\r\nỞ ngoài kia, đã có không ít người, doanh nghiệp thành công trong kinh doanh, tăng tỉ lệ chốt Sales, bán hàng, gia tăng doanh số, thu lợi nhuận cao. Hẳn là họ nắm trong tay những bí quyết riêng!\r\n\r\nVậy bí quyết đó là gì? Khóa học “30 Tuyệt chiêu gia tăng doanh số” Của Diễn giả - Luật sư Phạm Thành Long sẽ chia sẻ tới bạn 30 tuyệt chiêu, bí quyết để giúp bạn gia tăng doanh số bán hàng nhanh chóng. 30 Tuyệt chiêu rất đơn giản, nhưng mang lại hiệu quả và bạn có thể dễ thực hiện.\r\n\r\nTrong thời buổi kinh tế thị trường, cạnh tranh cao như hiện nay, nếu bạn còn chần chừ, do dự thì ắt hẳn phần thắng sẽ rơi vào tay kẻ khác.\r\n\r\nĐăng ký ngay khóa học để cùng nhau khám phá và thành công.', 'Nắm được các bí quyết để từ một người mới vào nghề bán hàng trở thành một chuyên gia bán hàng\r\nBiết cách tìm kiếm được nhiều khách hàng tiềm năng\r\nBiết cách tăng tỷ lệ hẹn gặp thành công\r\nTăng tỉ lệ doanh thu và lợi nhuận cho cá nhân và toàn doanh nghiệp', 'giatangdoanhso-phamthanhlong.jpg', '40', 'giatangdoanhso-phamthanhlong.mp4', 4, 1200000, NULL, NULL, 14, 5, 'Trở thành chuyên gia bán hàng, tăng doanh số tức thì với 30 tuyệt chiêu đơn giản, dễ làm mà hiệu quả', NULL, NULL),
(8, 'Kinh doanh Online hiệu quả với sản phẩm có sẵn', 'Bạn đang lên kế hoạch tự kinh doanh mà vẫn chưa tìm được sản phẩm phù hợp hay chưa biết cách quảng cáo sản phẩm?\r\nBạn chưa biết cách sử dụng được các công cụ quảng cáo online cho sản phẩm?\r\nBạn đam mê Marketing và muốn lên một quy trình quảng cáo sản phẩm online bài bản?\r\nKhóa học: \"Kinh doanh online hiệu quả với sản phẩm có sẵn\"  của Chuyên gia Vương Mạnh Hoàng dành cho bạn.\r\n\r\nKhóa học cung cấp cho bạn một quy trình Marketing Online thực tế, bài bản, toàn diện với ví dụ về một sản phẩm cụ thể là \"đèn xông tinh dầu\".\r\n\r\nVới hơn 10 năm kinh nghiệm làm việc trong lĩnh vực Marketing Online, Mr. Hoàng sẽ giúp bạn tự mình quảng cáo sản phẩm trên 5 kênh Marketing Online thông dụng: SEO, facebook, Forum seeding, Email, Youtube một cách bài bản nhất.\r\n\r\nGiờ đây, việc quảng cáo, theo dõi, phân tích, đánh giá, chăm sóc, quản lý khách hàng không còn là điều khó khăn đối với bạn nữa.', 'Biết lựa chọn sản phẩm kinh doanh phù hợp\r\nLựa chọn kênh Marketing phù hợp với sản phẩm kinh doanh\r\nNắm quy trình theo dõi, nghiên cứu, đánh giá, đưa sản phẩm ra kinh doanh\r\nSử dụng các công cụ Google Adword, Google Webmaster, Google Analytics\r\nCách dùng các phần mềm chăm sóc, quản lý khách hàng: Email marketing của Mailchimp, CRM Vtiger\r\nCách tối ưu hóa, tăng hiệu quả quảng cáo trên các kênh Marketing Online: SEO, Facebook, Forum seeding, Email, Youtube', 'kinhdoanhonline-vuongmanhhoang.jpg', '45', 'kinhdoanhonline-vuongmanhhoang.mp4', 3, 600000, NULL, NULL, 15, 5, 'Bí quyết lập kế hoạch, sử dụng các công cụ, lên quy trình quảng cáo giúp việc Kinh doanh trên Internet hiệu quả', NULL, NULL),
(9, 'Khởi nghiệp kinh doanh online với số vốn 0 đồng', 'Kinh doanh Online đang là một xu thế và thực sự kinh doanh Online cũng là một công việc tay trái của rất nhiều người. Nhưng đa số những người kinh doanh online đang làm sai phương pháp và mới chỉ dừng lại ở việc rao vặt hoặc post bài facebook.\r\n\r\nĐể khởi sự kinh doanh online bài bản có doanh số tức thì, thừa hưởng được những giá trị về sau thì bạn cần phải có một người thầy kinh nghiệm để dẫn dắt từ Chiến lược, Hệ thống, Quy Trình và Công Cụ\r\n\r\nĐến với khóa học KHỞI NGHIỆP KINH DOANH ONLINE VỚI 0 ĐỒNG bạn sẽ được hướng dẫn cách xây dựng một hệ thống kinh doanh tự động, biết cách tăng doanh thu và lợi nhuận, đồng thời cũng lựa chọn cho mình những chiến lược hiệu quả để STARTUP Online thành công hơn.\r\n\r\nNgười giàu tin rằng khởi nghiệp là cách nhanh nhất để kiếm tiền\r\n\r\n...trong khi người bình thường lại nghĩ khởi nghiệp thật rủi ro.\r\n\r\nSự thật là làm công ăn lương cũng chẳng hề an toàn hơn làm kinh doanh. Doanh nhân luôn có thể chủ động nắm bắt cơ hội và tăng lợi nhuận. Tất nhiên rủi ro là không thể tránh khỏi, nhưng điều đó không làm họ chùn bước.\r\n\r\nNgười giàu tin rằng họ giàu là vì hiểu biết nhiều\r\n\r\n...trong khi người bình thường lại nghĩ người giàu là người thông minh.\r\n\r\nGiàu có bằng khởi nghiệp,\r\n\r\nKhởi nghiệp kinh doanh có khó không?\r\n\r\n...khó với đa số, nhưng dễ nếu biết công thức và cách làm', 'TẠO 2 LIVE CHAT TỰ ĐỘNG VỚI V CHAT VÀ FACEBOOK CHAT\r\nCHIẾN LƯỢC, HỆ THỐNG, CÔNG CỤ ĐỂ TẠO MỘT HỆ THỐNG STARTUP ONLINE\r\nNGHIÊN CỨU THỊ TRƯỜNG ONLINE\r\nMÔ HÌNH KINH DOANH KHÔN NGOAN CỦA CÁC BẬT THẦY TRIỆU ĐÔ\r\nTỰ TAY XÂY DỰNG WEBSITE THEO NỀN TẢNG GOOGLE ĐỂ STARTUP\r\nTẠO 2 LIVE CHAT TỰ ĐỘNG VỚI V CHAT VÀ FACEBOOK CHAT\r\nTÍCH HỢP THANH TOÁN TỰ ĐỘNG QUA NGÂN HÀNG\r\nTHIẾT KẾ FORM ĐỂ THU THẬP DATA KHÁCH HÀNG MỤC TIÊU\r\nPHÁT TRIỂN QUANG HỆ VÀ BÁN HÀNG TỰ ĐỘNG BẰNG EMAIL AUTO\r\nCÁC CÔNG CỤ HỖ TRỢ ĐÁNH GIÁ ĐO LƯỜNG VÀ LÀM SEO HIỆU QUẢ', '0dong-davidthanh.jpg', '60', '0dong-davidthanh.mp4', 5, 700000, NULL, NULL, 16, 5, 'Bạn muốn Kinh Doanh Online nhưng Không có Vốn Trong tay? Khoá học giúp bạn xây dựng hệ thống Khởi nghiệp kinh doanh tự động từ 2 bàn tay trắng', NULL, NULL),
(10, 'Khóa học ngoại ngữ', NULL, NULL, '6buoc-leminhtuan.jpg', NULL, '6buoc-leminhtuan.mp4', NULL, NULL, NULL, NULL, 17, 1, NULL, NULL, NULL),
(11, 'Facebook Marketing từ A - Z', 'Facebook hiện đang là mạng xã hội với lượng người dùng lên hơn 60.000.000 người tại Việt Nam và ngày càng có chiều hướng gia tăng. Chính vì vậy, tất cả các nhãn hàng nổi tiếng mà bạn biết tên, thậm chí cả những nhãn hàng nhỏ, những shop thời trang trên phố lớn và cả những quán ăn vỉa hè trong ngõ nhỏ đều xuất hiện trên Facebook. Vậy tại sao bạn và doanh nghiệp của bạn có thể đứng ngoài “cuộc chơi lớn” với vô vàn những cơ hội nếu biết tận dụng này?\r\n\r\nHọc Facebook Marketing - khó mà dễ. Facebook là thị trường lớn với vô vàn khách hàng đủ mọi giới tính, sở thích, ngành nghề và tiếp xúc nhanh chóng với hàng trăm thương hiệu, hàng nghìn sản phẩm khác nhau ngay sau khi đăng nhập. Vậy làm sao để bạn nhanh chóng tiếp cận đúng khách hàng mục tiêu và khiến họ nhanh chóng đưa ra quyết định mua hàng?\r\n\r\nKhóa học Facebook Marketing từ A - Z sẽ giải quyết toàn bộ vướng mắc cho bạn và doanh nghiệp của bạn khi dùng Facebook như 1 “chợ thương mại” - Dù là việc chọn sản phẩm, sáng tạo nội dung hình ảnh gắn với sản phẩm cho đến việc giải quyết khi tài khoản gặp vấn đề và xây dựng chiến dịch quảng trên Facebook thế nào cho hiệu quả bằng những công cụ hỗ trợ tối ưu toàn diện.', 'Hiểu rõ bản chất quảng cáo facebook\r\nXây dựng kế hoạch quảng cáo Facebook hiệu quả\r\nSử dụng thành thạo các công cụ hỗ trợ quảng cáo facebook\r\nTiết kiệm chi phí nhưng vẫn mang lại lợi nhuận cao\r\nSáng tạo, xây dựng hình ảnh, nội dung thu hút, có tính tương tác cao\r\nÁp dụng ngay các thủ thuật tối ưu Facebook Ads ngay trong quá trình học.', 'facebookaz-hocuong.jpg', '60', 'facebookaz-hocuong.mp4', 5, 250000, NULL, NULL, 18, 3, 'Trọn bộ khoá học facebook marketing online từ a-z hướng dẫn chuyên sâu về quảng cáo facebook giúp bạn có các chiến lược facebook marketing hoàn hảo - tự chạy quảng cáo chuyên nghiệp.', NULL, NULL),
(12, 'VUA EMAIL MARKETING', 'Email marketing vẫn là công cụ hỗ trợ đắc lực cho những chiến lược Marketing.\r\n\r\nEmail marketing giúp bạn xây dựng mối quan hệ, tạo dựng lòng tin và tăng khả năng nhận diện thương hiệu với khách hàng bằng cách cung cấp thông tin hữu ích.\r\n\r\nTuy nhiên để tiếp thị thành công và tăng doanh số kinh doanh bằng email là điều mà tất cả người làm chiến lược nào đều muốn nhưng không phải lúc nào cũng hiệu quả.\r\n\r\nĐể bạn luôn duy trì được những chiến dịch Email marketing thành công, mang đến cho bạn thêm nhiều khách hàng và bán được nhiều sản phẩm/dịch vụ  hơn nữa thì hãy đến với khóa học Vua Email Marketing của giảng viên Hán Quang Dự.\r\n\r\nVới cách truyền đạt dễ nhớ, dễ hình dung, bạn sẽ nắm được bản chất của Email marketing từ đó đưa ra những chiến lược kinh doanh bằng email và được thực hành bằng công cụ Getresponse. Từ đó, bạn sẽ có được những bí quyết email marketing chuyên biệt để tạo dựng thành công.', 'Biết chi tiết từng bước để hiện thực hóa chiến lược đó thông qua Gmail và Getresponse\r\nCách thức xây dựng website đơn giản và hiệu quả\r\nKỹ thuật để có được thông tin khách hàng tiềm năng trên Facebook tự động\r\nBiết cách thức để có thông tin về tiềm năng từ YouTube tự động', 'email-hanquangdu.jpg', '60', 'email-hanquangdu.mp4', 4, 350000, NULL, NULL, 19, 3, 'Khóa học Email Marketing giúp bạn đưa ra những chiến lược kinh doanh bằng Email Marketing, cách sử dụng công cụ Getresponse, nâng cao chất lượng tìm kiếm, chăm sóc khách hàng', NULL, NULL),
(13, 'Hướng dẫn làm web Landing Page bán hàng đỉnh cao dành cho người không chuyên', 'Bạn đam mê kinh doanh? Bạn mong muốn tự tay thiết kế, sở hữu, làm chủ một Website của chính mình để quảng cáo sản phẩm, bán hàng, hoặc xây dựng hình ảnh cá nhân?\r\n\r\nBạn đã lên mạng tìm kiếm hướng dẫn làm web , nhưng lại thiếu kiến thức Internet và thất bại?\r\n\r\nBạn mất quá nhiều thời gian và công sức để tạo lập một trang Web, bạn chán nản và quyết định đi thuê thiết kế Website. Nhưng…. vấn đề nối tiếp vấn đề….\r\n\r\nGiá thiết kế website quá đắt, từ 2 – 10 triệu cho một website thương mại với tính năng cơ bản.\r\nWebsite bị lỗi không biết nhờ ai sửa chữa, bạn sẽ mất doanh thu bán hàng nếu không khắc phục sớm.\r\nMuốn thay đổi một chút giao diện, tính năng website phải nhờ kỹ thuật và cũng phải chờ vài tuần.\r\nChỗ nào giá rẻ thì ít hỗ trợ tính năng bán hàng, Marketing.\r\nBạn bực bội và nói rằng “Nếu mình có chút kiến thức cơ bản về thiết kế website thì đã không gặp những trường hợp như vậy!”\r\n\r\nKhóa học LÀM WEB SIÊU TỐC cho người không chuyên được thiết kế đặc biệt dành cho những người không biết gì về lập trình, kỹ thuật internet... được hướng dẫn trực tiếp bởi Giảng viên Trương Văn Hòa sẽ giúp ban tạo được cho mình những trang landing page bán hàng tuyệt đỉnh, gia tăng doanh số, học chưa xong web đã xong.\r\n\r\nKhóa học dành cho những người bình thường muốn làm lên những việc phi thường trên Internet.', 'Thiết kế Website trong tích tắc\r\nThu hút nhiều khách hàng truy cập vào website.\r\nBiết cách xây dựng nội dung bán hàng hiệu quả\r\nTối ưu hóa Website để đưa từ khóa lên Top 1 google với chi phí thấp\r\nTùy chỉnh giao diện Website theo ý muốn, thêm bớt tính năng chỉ với một cú bấm chuột', 'weblanding-truonghoa.jpg', '50', 'weblanding-truonghoa.mp4', 4, 250000, NULL, NULL, 20, 3, 'Hướng dẫn bạn chi tiết cách bạn làm web bán hàng đỉnh cao với landing page ngay cả khi bạn không biết gì về kỹ thuật IT, học chưa xong web đã xong', NULL, NULL),
(14, 'Facebook Marketing Du Kích Tiếp cận hàng ngàn khách hàng với chi phí bằng 0', 'Facebook  hiện đang ảnh hưởng rất lớn lên đời sống hằng ngày của chúng ta. Sự có mặt của con người trên mạng xã hội này khiến cho chúng trổ thành mảnh đất màu mỡ của các nhà marketing online chiến lược tung hoành. Và sự thật có hàng chục ngàn người đã trở thành giàu có nhờ kinh doanh, quảng cáo trên Facebook.\r\n\r\nNhưng làm thế nào để có chiến lược bán hàng hiệu quả mà không tốn bất cứ một chi phí nào.?\r\n\r\nCác bạn hãy đến với khóa học “Facebook Marketing Du Kích” của chuyên giao đào tạo Nguyễn Huỳnh Giao.\r\n\r\nCách thức tiếp cận hàng ngàn khách hàng tiềm năng trên facebook với chi phí 0 đồng.\r\nCập nhật các tình hình mới nhất về các sản phẩm kinh doanh online.\r\nHiểu rỏ nền tản cung cấp thông tin của Facebook để bán hàng hiệu quả.\r\nNhanh tay đăng ký để nhận được nhiều lợi ích từ khóa học nhé!', 'Hiểu rõ nền tảng cung cấp thông tin của Facebook để bán hàng hiệu quả.\r\nCác bí mật bán hàng trên Facebook mà chưa có chuyên gia nào dạy bạn.\r\nĐược cặp nhật các tình hình mới nhất về các sản phẩm kinh doanh online.\r\nSở hữu các công cụ và tool, kỹ thuật marketing online mới nhất giá hàng triệu đồng miển phí.\r\nKỹ thuật viết nội dung thôi miên khách hàng giúp họ quan tâm đến sản phẩm nhiều hơn .\r\nTham gia Group kín dành cho học viên để giải đáp thắc mắc và chia sẻ kinh nghiệm kinh doanh.', 'facebook-huynhgiao.jpg', '90', 'facebook-huynhgiao.mp4', 5, 450000, NULL, NULL, 21, 3, 'Cách thức tiếp cận hàng ngàn khách hàng tiềm năng trên facebook với chi phí 0 đồng thông qua các công cụ marketing online mới nhất', NULL, NULL),
(15, 'Tiếng Anh giao tiếp căn bản cho người Mất gốc', 'Search, search, search..... Cách học tiếng Anh giao tiếp, Học tiếng Anh giao tiếp căn bản, Tiếng Anh cho người mất gốc, Tiếng Anh cho người đi làm.....\r\n\r\nBạn thấy quen không ạ?\r\n\r\nBạn đã bao giờ liên tục hỏi Bác Google cách học tiếng Anh hiệu quả, học tiếng Anh từ đầu...Nhưng vẫn không tìm ra cho mình một giải pháp, một cách thức, một giáo viên, hay một trung tâm học hiệu quả. Tiếng Anh của bạn vẫn.... Oh my God, Tôi chả nói được tiếng Anh đâu! \r\n\r\nĐừng lo lắng bạn nhé, không cần phải tìm kiếm đâu xa, ngay tại đây, Unica sẽ giúp bạn. \r\n\r\nKhóa học tiếng Anh giao tiếp căn bản cho người Mất gốc của Giảng viên Victoria Dương sẽ là cầu nối, là nền móng cho tiếng Anh của bạn bay cao, bay xa.\r\n\r\nNhững chủ đề đơn giản nhưng gần gũi như Giới thiệu bản thân, Shopping, Hỏi giờ, Giao tiếp trong Nhà hàng, Khách sạn,... khóa học giúp bạn, dù là người mới bắt đầu, chưa biết gì về tiếng Anh vẫn hiểu và thực hành giao tiếp được ngay. Còn nếu như, bạn đã có chút kiến thức, khả năng tiếng Anh, thì khóa học này sẽ giúp bạn hệ thống bài bản những chủ đề quen thuộc trong giao tiếp hàng ngày. \r\n\r\nVới tiêu chí: đơn giản, căn bản nhưng ứng dụng cao, Giảng viên tiếng Anh Victoria Duong đã giúp cho rất nhiều người chinh phục được tiếng Anh và tự tin trong giao tiếp. ', 'Dám nói và tự tin khi nói tiếng Anh\r\nYêu thích học tiếng Anh\r\nCó nền tảng và có thể giao tiếp được các tình huống đơn giản trong đời sống\r\nNền tảng học Tiếng Anh nâng cao phục vụ nghề nghiệp', 'matgoc-victoria.jpg', '60', 'matgoc-victoria.mp4', 3, 350000, NULL, NULL, 22, 1, 'Những chủ đề giao tiếp đơn giản, gần gũi, là cầu nối, nền móng cho tiếng Anh của bạn bay cao, bay xa', NULL, NULL),
(16, 'Anh văn giao tiếp cho người hoàn toàn mất gốc', 'Phương pháp giao tiếp siêu tốc kiểu Mỹ, dễ học, dễ nói, dễ thành công.\r\n\r\nTiếng Anh hiện nay được xem là  ngôn ngữ chung của thế giới, vì vậy ngày càng nhiều người Việt đầu tư học tiếng Anh. \r\n\r\nHọc tiếng Anh bắt đầu từ đâu?\r\n\r\nBạn là những đối tượng mất căn bản tiếng Anh, mất gốc tiếng Anh?\r\n\r\nBạn đã quá chán nản với việc học tiếng Anh nhiều năm chưa tiến bộ?\r\n\r\nNhững điều bạn băn khoăn sẽ được xua tan ngay khi bạn đăng ký khóa học của Unica, khóa học sẽ giúp bạn khắc phục tất cả khó khăn để vực dậy, khơi nguồn niềm đam mê với TIẾNG ANH. Khóa học cho bạn biết được cách học tiếng Anh đúng cách. Các bạn sẽ được nhập vai vào các tình huống tiếng Anh giao tiếp hết sức thú vị thực tế hàng ngày.\r\n\r\nLộ trình học “Tiếng Anh cho người hoàn toàn mất gốc” của Giảng viên Ruby Thảo Trần giao tiếp cùng phương pháp phản xạ truyền cảm hứng sẽ giúp bạn nâng cao trình độ một cách nhanh chóng và hiệu quả, bạn sẽ hoàn toàn tự tin với trình độ tiếng Anh giao tiếp mới của bản thân đấy!  ', 'Lấy lại nền tảng tiếng Anh bị mất gốc, tập trung vào phần nói và nghe\r\nTự tin trong cuộc sống và giao tiếp với người nước ngoài\r\nBổ trợ cho công việc cũng như học tập một cách tốt nhất và hiệu quả nhất.\r\nCó thể giao tiếp và trả lời phỏng vấn bằng tiếng anh lưu loát. \r\nNắm bắt được yếu tố cần thiết khi giao tiếp và làm việc với người nước ngoài\r\nCơ hội làm việc trong môi trường nước ngoài với chế độ đãi ngộ cao', 'matgoc-ruby.jpg', '90', 'matgoc-ruby.mp4', 5, 780000, NULL, NULL, 23, 1, 'Khơi dậy niềm đam mê tiếng Anh, tự tin giao tiếp tiếng Anh như người bản xứ, mở ra cơ hội học tập và làm việc tại các công ty đa quốc gia.', NULL, NULL),
(17, 'Học tiếng Nhật thật dễ', 'Phương pháp học siêu tốc kiểu Nhật, dễ học, dễ nói, dễ thành công.\r\n\r\nKhóa học nhằm giúp cho người mới bắt đầu học tiếng Nhật có những hứng thú, tạo động lực theo đuổi cho một quá trình dài lâu. \r\nQua đây, bạn học được những câu chào hỏi, từ vựng, ngữ pháp căn bản của tiếng Nhật vỡ lòng một cách sinh động, đầy hứng thú, đầy cảm quan với một giáo trình được biên soạn chi tiết, dễ hiểu và dễ ứng dụng. Hãy chọn thật đúng con đường phía trước của bạn.\r\nĐến với giảng viên Bùi Thị Thanh Trúc, học viên sẽ được tiếp cận với những kiến thức rất bổ ích, thiết thực. Với sự đam mê và tận tâm, giảng viên sẽ giúp các bạn tiếp cận với cách dạy đầy sáng tạo và hoàn thiện hơn trong quá trình học. ', 'Nền tảng vững chắc về tiếng Nhật, tạo tiền đề cho việc học nâng cao\r\nThành thạo cách đọc viết, giao tiếp căn bản với người Nhật Bản\r\nTự tin hơn trong giao tiếp, bổ trợ rất nhiều cho công việc tại các công ty Nhật\r\nVốn từ cơ bản cần thiết tạo tiền đề du học, du lịch Nhật Bản', 'nhat-thanhtruc.jpg', '60', 'nhat-thanhtruc.mp4', 4, 549000, NULL, NULL, 24, 1, 'Hệ thống câu chào hỏi, từ vựng, ngữ pháp căn bản của tiếng Nhật vỡ lòng một cách sinh động, đầy hứng thú, đầy cảm quan với một giáo trình được biên soạn chi tiết, dễ hiểu và dễ ứng dụng', NULL, NULL),
(18, 'Chiến thuật chinh phục IELTS Speaking', 'Khóa học được thiết kế nhằm giúp cho người học có cái nhìn toàn diện về Ielts speaking, cách tiếp cận, cách trả lời như thế nào để ghi điểm với giám khảo trong kì thi. Hơn nữa khóa học nhấn mạnh vào việc tăng vốn từ vựng, khả năng paraphrase, ra ý tưởng. \r\n\r\nNhư chúng ta đều biết, bản chất của Ielts speaking hay hỏi những câu hỏi khá khó, đôi khi bản thân người ản xứ còn cảm thấy khó để trả lời. Vì vậy, trong khóa học, học viên cũng sẽ được hướng dẫn cách ra ý tưởng một cách nhanh, hiệu quả và hợp lý nhất để không bị lúng túng khi trả lời.', 'Hiểu tiêu chí của kì thi Ielts speaking và tiêu chí chấm của giám khảo\r\nTăng vốn từ vựng Academic, thành ngữ trong Speaking\r\nTăng khả năng ra ý tưởng cũng như phản xạ trong kì thi\r\nĐạt điểm cao trong phần thi Speaking giúp nâng tổng điểm', 'ielts-lananh.jpg', '60', 'ielts-lananh.mp4', 3, 679000, NULL, NULL, 25, 1, 'Hướng dẫn bạn hiểu toàn diện về IELTS Speaking, các chiến thuật để đạt điểm cao trong kì thi trong 5 bài từ giảng viên Lan Anh', NULL, NULL),
(19, 'Học nhiếp ảnh từ cơ bản đến nâng cao', 'Bạn là người săn lùng chụp những tấm ảnh đẹp nhưng vẫn còn chưa biết sử dụng máy cơ hay canh góc chụp hoàn hảo. \r\n\r\nDù bạn là phóng viên, marketer, designer, freelancer hay chỉ đơn giản là người đam mê chụp ảnh sáng tạo thì việc sở hữu cho mình một kinh nghiệm và bí quyết để đưa máy lên chụp những tấm ảnh thật ấn tượng dù trong không gian hay thời gian khắc nghiệt đến đâu cũng rất quan trọng.\r\n\r\nĐể chụp được tấm ảnh đẹp đã khó và design những tấm ảnh đó cho thật lung linh, ấn tượng, sắc nét lại còn khó hơn.\r\n\r\nKhóa học này không những giúp cho bạn nắm chắc cách thức chụp được những tấm ảnh đẹp mà còn có thể giúp bạn xử lý thật tinh tế những tấm ảnh đó qua từng góc chụp độc đáo và sắc nét nhất. ', 'Phân tích bố cục cần thiết khi chụp một tấm hình đẹp\r\nTự tin xử lí các tình huống bất ngờ xảy ra khi chụp hình\r\nTự mình chỉnh sửa hậu kì cho những tấm hình \r\nTự tạo thiết kế baner, poster đẹp mắt\r\nTrở nên đa tài hơn, lãng tử hơn trong mắt phái đẹp\r\nThoải sức sáng tạo, trao dồi cho công việc của mình thật tốt. ', 'hocnhiepanh-hoangvietthang.jpg', '30', 'hocnhiepanh-hoangvietthang.mp4', 4, 200000, NULL, NULL, 26, 7, 'Bạn muốn chụp những bức ảnh đẹp, bạn muốn ghi lại khoảnh khắc ấn tượng, lung linh. Khóa học này sẽ giúp bạn học bố cục, cách chụp, và xử lí hình ảnh từ cơ bản đến nâng cao.', NULL, NULL),
(20, 'Kỹ thuật nhiếp ảnh: Ánh sáng và hiệu ứng', 'Ánh sáng là điểm khởi đầu cho nhiếp ảnh, không có ánh sáng sẽ không có nhiếp ảnh. Hai yếu tố này liên quan mật thiết tới nhau, cũng như trong nghệ thuật, ánh sáng sẽ tạo ra những hiệu ứng vô cùng huyền diệu.\r\n\r\n Khóa học \"Ánh áng và nhiếp ảnh cơ bản\" sẽ cung cấp cho bạn những kiến thức cơ bản nhất về chức năng và thao tác với máy ảnh, từ đó, bạn có thể kết hợp cùng ánh sáng để tạo ra những bức ảnh có 1-0-2. \r\n\r\n Nội dung khóa học sẽ đề cập tới những đặc trưng cơ bản của nguyên lý hoạt động và cấu trúc của chiếc máy ảnh; Cách sử dụng máy ảnh số; Giới thiệu về một số loại ống kính cơ bản trong nhiếp ảnh; Xử  lý những sự cố đơn giản thường  gặp khi chụp  ảnh  bằng máy  ảnh...\r\n\r\n Đồng thời, giới thiệu khái quát về các dạng bố cục trong khuôn hình nhiếp ảnh; đặc biệt vai trò của ánh sáng, phương pháp chiếu sáng, đặc điểm của các loại ánh sáng, kỹ thuật pha trộn ánh sáng nội kết hợp ngoại; nhận thức chủ quan và tính sáng tạo của người cầm máy, từ đó nêu bật nên được mối quan hệ giữa kỹ thuật và nghệ thuật, giữa nội dung và hình thức thể hiện trong một khuôn hình nhiếp ảnh.', 'Làm chủ được thiết bị, các chức năng của máy\r\nKiểm soát được ánh sáng và cách sắp xếp ánh sáng\r\nHiểu được cách phối hợp các trang thiết bị trong nhiếp ảnh\r\nTận dụng triệt để ánh sáng để có những bức ảnh đẹp mà không cần nhờ đến Photoshop', 'hocnhiepanh-phiconghuy.jpg', '40', 'hocnhiepanh-phiconghuy.mp4', 5, 300000, NULL, NULL, 27, 7, 'Phương pháp ánh sáng và hiệu ứng đúng trong nhiếp ảnh - cung cấp những kiến thức cơ bản nhất về chức năng và thao tác với máy ảnh', NULL, NULL),
(21, 'Dựng phim truyền thông đỉnh cao với Adobe premiere', 'Bạn là người yêu làm phim, muốn theo đuổi nghề làm phim chuyên nghiệp hay mục đích sử dụng làm phim marketing cho doanh nghiệp thì khóa học này là dành cho bạn.\r\n\r\nKhóa học trang bị đầy đủ những kiến thức cơ bản, giúp bạn có nền tảng vững vàng với nghề dựng phim chuyên nghiệp.\r\n\r\nKhóa học cô đọng, xúc tích, dễ hiểu, áp dụng được ngay kiến thức vào công việc, tiết kiệm thời gian học và làm nhanh chóng.', 'au khi hoàn thành khóa học bạn sẽ: Làm được những thước phim chuyên nghiệp, những chương trình talkshow truyền hình, ca nhạc.\r\nTách ghép phông xanh, motion graphics title.\r\nChỉnh màu và hiệu ứng một cách thu hút, chuyên nghiệp.', 'hocnhiepanh-mastertran.jpg', '30', 'hocnhiepanh-mastertran.mp4', 4, NULL, NULL, NULL, 30, 7, 'Khóa học này sẽ cung cấp cho bạn những kiến thức vững vàng và bài bản, đầy đủ các kỹ thuật cần thiết trong lĩnh vực kỹ xảo điện ảnh', NULL, NULL),
(22, 'Nhiếp ảnh cơ bản', 'Khoá học Nhiếp ảnh cơ bản, Giảng viên Quang Rabien sẽ cung cấp bạn những thông tin cơ bản nhất về nhiếp ảnh, đảm bảo sau khi kết thúc khóa học, bạn có thể tự tin thực hiện các thao tác về máy ảnh và kỹ năng chụp ảnh. \r\n\r\n \r\n\r\nĐồng thời khoá học sẽ cung cấp cả về vấn đề lý luận của nhiếp ảnh nhằm tạo cơ sở để học viên có cơ sở để phát triển chuyên sâu sau này. ', 'Biết cách sử dụng máy ảnh\r\nHiểu các thông số ký thuật và thao tác các thông số đó \r\nCảm nhận được về thẩm mỹ và các quy tắc của nhiếp ảnh \r\nCó khả năng tác nghiệp cho các dự án nhỏ hoặc sự kiện của công ty, trường...', 'hocnhiepanh-nguyenngocquang.jpg', NULL, 'hocnhiepanh-nguyenngocquang.mp4', 5, 40000, NULL, NULL, 28, 7, 'Tự tin thực hiện các thao tác về máy ảnh và kỹ năng chụp ảnh chuyên nghiệp', NULL, NULL),
(23, 'Tập Yoga cơ bản ngay tại nhà với Nguyễn Hiếu', 'Yoga – một thuật ngữ khá quen thuộc hiện nay. Có rất nhiều lý do khiến Yoga có sức hút đối với nhiều người đến vậy: Yoga giúp cải thiện cơ bắt, tăng tính linh hoạt, giúp cân bằng, thư giãn và giảm stress. Không những thế Yoga còn làm giảm các triệu trứng của bệnh trầm cảm, lo âu và đau mãn …\r\n\r\nThật là tuyệt vời để tham dự các lớp học Yoga tại các trung tâm thể dục thẩm mĩ chuyên nghiệp. Nhưng bạn lại đang gặp khó khăn về cả thời gian lẫn tài chính để tham gia một khóa học như thế. Không sao cả!\r\n\r\n Chuyên gia Nguyễn Hiếu Yoga tạo ra khoá học Tập Yoga cơ bản ngay tại nhà cùng chuyên gia. Được hướng dẫn tận tình bởi Đại sứ Nguyễn Hiếu Yoga, bạn sẽ biết cách tập một số động tác Yoga cơ bản ngay tại nhà, hỗ trợ sức khỏe tinh thần và thể chất của bạn.\r\n\r\n ', 'Sở hữu dáng đẹp eo thon như mong muốn\r\nRèn luyện tâm trí, an nhiên trong cuộc sống\r\nGiải độc cơ thể, giảm stress hiệu quả\r\nTăng cường sức khỏe, đẩy lùi bệnh tật', 'suckhoe-nguyenhieu.jpg', '60', 'suckhoe-nguyenhieu.mp4', 5, 200000, NULL, NULL, 33, 8, 'Cải thiện sức khoẻ tinh thần và thể chất với những bài tập Yoga cơ bản ngay tại nhà của bạn', NULL, NULL),
(24, 'Yoga 30 ngày, con người mới - toàn diện trong ngoài', 'Trong cuộc sống hiện đại ngày nay, bên cạnh những công việc hằng ngày tất cả mọi người đều quan tâm đến sức khỏe, sắc đẹp không chỉ có chị em phụ nữ mà các phái nam cũng theo đuổi bộ môn yoga này bên cạnh tập gym hoặc loại hình khác.\r\n\r\nChỉ với các bài tập đơn giản, sau một tuần bạn sẽ cảm nhận được sự thay đổi khác biệt về cơ thể, sự chuyển động linh hoạt và nhẹ nhàng hơn trong từng cử chỉ sẽ làm bạn cảm thấy phấn khởi và tự tin trong cuôc sống. Gắn kết lâu dài với những bài tập này mỗi ngày bạn sẽ càng yêu thích và đam mê nó nhiều hơn. Bạn muốn khám phá hết tất cả những lợi ích mà yoga mang lại và trở thành một người luyện tập điêu luyện.\r\n\r\nKhóa học 30 ngày, chỉ 15 phút mỗi ngày, với tuyển tập Clip được biên soạn tỷ mỉ, sắp xếp công phu, truyền đạt ngắn gọn, DiỄN ĐẠT SÚC TÍCH, Alex Vinh tài tình đưa người tập những điều then chốt, căn bản nhất nhưng không kém phần thú vị, trong khoảng thời gian quí giá của mỗi người. \r\n\r\nHãy tham gia để cùng trải nghiệm và làm cho cuộc sống của bạn tuyệt vời hơn về cả bên trong lẫn bên ngoài với yoga.', 'Giúp bạn hiểu sâu về cơ thể mình hơn\r\nTâm trí bạn sẽ trở nên sảng khoái và yêu đời hơn\r\nCải thiện sức khoẻ và cuộc sống cá nhân một cách sâu sắc\r\nTrở thành một con người hoàn toàn mới', 'suckhoe-alex.jpg', '50', 'suckhoe-alex.mp4', 4, 400000, NULL, NULL, 35, 8, 'Chỉ với 30 ngày học Yoga giúp bạn trở thành con người hoàn toàn mới- Yoga giúp bạn hiểu sâu hơn về cơ thể mình tâm trí trở nên sáng khoái hơn, sức khoẻ dồi dào', NULL, NULL),
(25, 'Múa yoga - Đánh thức vẻ đẹp trong bạn', '\'Múa Yoga D\'vana là gì? Là một nghệ thuật chuyển động sáng tạo bởi Milena. Ngoài sự kết hợp độc đáo giữa Yoga và Múa, 3 đặc trưng của D\'vana là: \r\n\r\nThể hiện tính nữ thần thánh: chuyển động chậm, uyển chuyển cùng hơi thở và điệu nhạc \r\nSự hài hoà giữa cảm xúc và tỉnh thức, mềm mại và mạnh mẽ, tĩnh và động, chuẩn xác và tự do\r\nMỗi bài múa ẩn chứa một câu chuyện, một lời nhắn nhủ về cuộc đời và trải nghiệm làm người\r\nBạn sẽ học được...\r\n\r\nKiến thức nền tảng về Yoga và cách rèn luyện Yoga hiệu quả\r\nCách lắng nghe và cảm nhận cơ thể \r\nCách chuyển động duyên dáng với hơi thở và điệu nhạc\r\nChỉ dẫn chi tiết và chuẩn xác các tư thế yoga quan trọng\r\nHoàn chỉnh một bài Múa Yoga tuyệt đẹp để biểu diễn hoặc tự rèn luyện\r\nCách biểu đạt cảm xúc và tâm hồn qua cơ thể bạn\r\nCách khám phá khía cạnh nghệ sĩ và tự do trong con người bạn\r\nTrải nghiệm tự do, nghệ thuật, và đầy năng lượng của Yoga và Múa', 'Trở nên khoẻ, dẻo, và cân bằng hơn\r\nCảm nhận, hiểu, và yêu thương cơ thể mình\r\nTrân trọng và kết nối với cảm xúc của chính mình\r\nChuyển động một cách tự do và mạnh mẽ hơn trong cuộc sống\r\nCảm nhận sự tự do trong cơ thể và sự tự tin trong chính mình\r\nCảm thấy thư thái, tĩnh tại, và yêu đời hơn', 'suckhoe-milena.jpg', '70', 'suckhoe-milena.mp4', 5, 200000, NULL, NULL, 34, 8, 'Trở nên khoẻ, dẻo, và cân bằng hơn trong cuộc sống, Trân trọng và kết nối với cảm xúc của chính mình với bộ bài tập múa Yoga', NULL, NULL),
(26, 'Tự chữa bệnh không dùng thuốc', 'Hiện nay người Việt thiếu kiến thức về dinh dưỡng, không biết cách chăm sóc sức khỏe, nên hệ miễn dịch yếu, nhiều bệnh trong cơ thể. Khóa học DINH DƯỠNG ỨNG DỤNG - SỐNG KHỎE VỚI RAU CỦ QUẢ sẽ hướng dẫn cho học viên biết cách chăm sóc sức khỏe chủ động bằng dinh dưỡng. Từ đó có thể giảm thiểu chi phí cho y tế, giúp cộng đồng biết chăm sóc sức khỏe có một cuộc sống tốt đẹp hơn. Tổng thống Mỹ Bill Clinton, hàng ngàn người trên Thế giới đã áp dụng thành công phương pháp này. Đây là xu hướng của thế giới.', 'Cách ăn uống dinh dưỡng phòng và chống bệnh tật ...\r\nSở hữu  những công thức chế biến thực phẩm thông minh.\r\nTiếp thu thêm những kiến thức dinh dưỡng hiện đại..\r\nTự tin áp dụng những kiến thức đã học trong đời sống hàng ngày....', 'suckhoe-dauthinhung.jpg', '30', 'suckhoe-dauthinhung.mp4', 5, 200000, NULL, NULL, 36, 8, 'Khóa học hướng dẫn cho học viên biết cách chăm sóc sức khỏe chủ động bằng dinh dưỡng: Tự chữa bệnh không dùng thuốc , an toàn, hiệu quả', NULL, NULL),
(28, 'Làm phim hoạt hình 2D với MAYA', 'Khoá học Nhiếp ảnh cơ bản, Giảng viên Quang Rabien sẽ cung cấp bạn những thông tin cơ bản nhất về nhiếp ảnh, đảm bảo sau khi kết thúc khóa học, bạn có thể tự tin thực hiện các thao tác về máy ảnh và kỹ năng chụp ảnh. \r\n\r\n \r\n\r\nĐồng thời khoá học sẽ cung cấp cả về vấn đề lý luận của nhiếp ảnh nhằm tạo cơ sở để học viên có cơ sở để phát triển chuyên sâu sau này. ', 'Biết cách sử dụng máy ảnh\r\nHiểu các thông số ký thuật và thao tác các thông số đó \r\nCảm nhận được về thẩm mỹ và các quy tắc của nhiếp ảnh \r\nCó khả năng tác nghiệp cho các dự án nhỏ hoặc sự kiện của công ty, trường...', 'thietke-nguyenngocquang.jpg', '60', 'thietke-nguyenngocquang.mp4', 5, 500000, NULL, NULL, 28, 4, 'Hướng dẫn làm phim hoạt hình 2D tạo nên 1 tác phẩm tuyệt vời một cách chuyên nghiệp với Maya', NULL, NULL),
(29, 'Học Illustrator, photoshop và animate cc 2017 thông qua bài tập thực tế', 'Bạn đang bắt đầu tìm hiểu về thiết kế đồ họa hay đã biết tới vài năm nhưng chưa tạo được thiết kế nào đặc sắc? Bạn thấy có rất nhiều phần mềm được dùng trong công nghiệp thiết kế, đôi khi bạn hoang mang không biết nên học cách sử dụng phần mềm đồ họa nào. Hai phần mềm đồ họa phổ biến nhất tại Việt Nam là Adobe illustrator va Photoshop bởi chính sự tiện ích “thần kỳ” trong quá trình sáng tạo.\r\n\r\nVới 2 phần mềm này, bạn sẽ tự do thể hiện ý tưởng của mình theo đúng cách bạn nghĩ: từ thiết kế logo, vẽ bản đồ, biểu đồ hay thậm chí tạo hình ảnh dạng hoạt hình 2D, 3D cũng đều trong tầm tay. Hơn nữa, khi Photoshop dần trở thành “kỹ năng mềm” cần có trong con mắt của CEO khiến ai cũng đi học các lớp cấp tốc để chỉnh sửa vài bức ảnh thì sao bạn không bắt đầu ngay từ bây giờ để làm mình trở nên khác biệt hơn?\r\n\r\nKhóa học với tất cả các kiến thức về Photoshop và Illustrator dưới sự hướng dẫn của Nguyễn Đức Việt - giảng viên Thiết kế của trường Đại Học FPT khiến bạn không thể bỏ qua.', 'Thành thạo các thao tác trong Adobe Photoshop\r\nKỹ năng kết hợp Photoshop với Adobe Animate\r\nHọc Illustrator qua 10 bài tập\r\nKết hợp Illustrator cùng Adobe Animate', 'thietke-nguyenducviet.jpg', '75', 'thietke-nguyenducviet.mp4', 5, 400000, NULL, NULL, 39, 4, 'Tự tin thiết kế logo, vẽ bản đồ, biểu đồ và tạo hình ảnh hoạt hình 2D, 3D', NULL, NULL),
(30, 'Tạo hình thiết kế chuyên nghiệp với 3DSMAX', 'Trong xây dựng và kiến trúc, 3DSMAX là một trong những phần mềm phổ biển và đắc lực cho các kiến trúc sư và nhà thiết kế nội thất. Phần mềm này được sử dụng để trình bày ý tưởng thiết kế kiến trúc dưới dạng 3D. Khi mới làm quen với 3DSMAX thông thường người học sẽ thấy khó khăn, đa số không biết bắt đầu từ đâu.\r\n\r\nKhóa học \"Thành thạo tạo hình với 3DSMAX\" của chúng tôi sẽ đặt ra con đường ngắn nhất, đơn giản nhất giúp các bạn tiếp cận với phần mềm sau đó làm chủ nó.\r\n\r\nKhóa học được thiết kế dành cho sinh viên các ngành kiến trúc, đồ họa; các doanh nghiệp có nhu cầu nâng cao năng lực thiết kế của cán bộ, nhân viên bằng phần mềm 3DSMAX; các kỹ sư, kiến trúc sư cần củng cố kỹ năng, chuẩn hóa kiến thức sử dụng 3DSMAX.\r\n\r\nSau khóa học, bạn sẽ sử dụng thành thạo các nhóm lệnh và các công cụ của 3DSMAX, biết cách tạo hình sản phẩm. Đặc biệt, với sự hướng dẫn tận tình của KTS Lê Anh Tuấn - Người sáng lập cộng đồng đồ họa VietCG, Giám đốc công ty thiết kế kiến trúc VOS, chắc chắn bạn sẽ tạo ra được các sản phẩm 3D hoàn mỹ.\r\n\r\nHãy nhanh tay đăng ký khóa học bổ ích này để nhận được nhiều ưu đãi!', 'Sử dụng thành thạo các nhóm lệnh và các công cụ của 3DSMAX\r\nBiết cách tạo hình sản phẩm trong thực tế như hình hộp lập phương, bàn ghế sofa, căn nhà hoàn thiện,....\r\nSử dụng thành thạo 3DSMAX và tạo ra các sản phẩm phục vụ tốt công việc liên quan đến tạo hình\r\nNắm được kiến thức tự nghiên cứu phần mềm, chuẩn bị cho các bước nâng cao tiếp theo\r\nĐủ khả năng hoàn thiện đồ án chuyên ngành với kết quả cao\r\nTự tin ứng tuyển tại các công ty truyền thông, quảng cáo', 'thietke-leanhtuan.jpg', '60', 'thietke-leanhtuan.mp4', 5, 300000, NULL, NULL, 38, 4, 'Bạn sẽ sử dụng thành thạo các nhóm lệnh và các công cụ của 3DSMAX, biết cách tạo hình sản phẩm, tạo ra được các sản phẩm 3D hoàn mỹ.', NULL, NULL),
(31, 'Thiết kế Powerpoint chuyên nghiệp', 'Bạn đã bao giờ dành thời gian, tâm huyết, hì hụi chuẩn bị một bài thuyết trình tuyệt với những slide ấn tượng nhất cho khán giả của bạn? Và rồi nhận được những phản hồi đại loai: \"Phong cách tốt nhưng slide của bạn tôi chẳng nhớ được gì\"\r\nBạn cảm thấy thật thất vọng, chán nản khi không thể tự làm một slide đẹp hoàn chỉnh dù phần thuyết trình gần như hoàn hảo?\r\nBạn thường trình bài slide với quá nhiều text gây nhàm chán và buồn ngủ \r\n\r\nKhóa học PowerPoint - của Chuyên gia giảng dạy Visual Thinking Trần Quang Vũ sẽ giúp bạn làm \"chinh phục thị giác khán giả.\r\n\r\nBạn không cần thành thạo những công cụ trong phần mềm PowerPoint. Bạn không cần phải là một nhà thiết kế chuyên nghiệp. Bạn cũng không cần tốn quá nhiều thời gian để thiết kế một slide dễ dàng đi vào lòng người. ', 'Thiết kế hình ảnh chuyên nghiệp mà không cần dùng đến các phần mềm Photoshop,inllustrator...\r\nỨng dụng đa lĩnh vực, từ học tập, công việc, cuộc sống...\r\nGhi điểm với khán giả ngồi xem với những hình ảnh, font chữ bắt mắt\r\nTruyền đạt ý tưởng một cách ngắn gọn súc tích mà không tốn nhiều thời gian chuẩn bị', 'tinhoc-tranquanghai.jpg', '60', 'tinhoc-tranquanghai.mp4', 5, 300000, NULL, NULL, 41, 2, 'Khóa học thiết kế PowerPoint chuyên nghiệp giúp học viên trình bày bài thuyết trình ấn tượng với những slide cuốn hút, lôi kéo khán giả', NULL, NULL),
(32, 'Microsoft Excel 2013 nâng cao', 'Microsoft Excel 2013 nâng cao là khóa học Excel từ cơ bản đến nâng cao, hướng dẫn các hàm trong Excel. Khóa học Excel Online ko giới hạn thời gian học. Giảng viên chuyên gia đầu ngành\r\n\r\nHướng dẫn ứng dụng Excel hiệu quả trong công việc. Tăng nâng suất làm việc lên 5 lần nhờ việc rút gọn thời gian làm nhờ các quy tắc tự động của Excel.\r\nTự tay tạo lên hệ thống thống kê, sổ sách bằng Excel 2013 với số lượng sheet làm việc lớn thay thế cho các phần mềm quản lý phức tạp, chi phí cao.\r\nKhóa học Excel Online giúp tìm hiểu và sử dụng các kiến thức nâng cao như bảo vệ nội dung, đặt tên – liên kết vùng dữ liệu, thành thạo conditional formatting\r\nLập biểu mẫu khoa học dễ hiểu, dễ tìm – tham chiếu dữ liệu, đồng thời học cách sử dụng hàm hợp lý tính toán nhanh.', 'Hướng dẫn các học Excel nhanh và hiệu quả\r\nỨng dụng Excel hiệu quả trong công việc\r\nTự tay tạo lên hệ thống thống kê, sổ sách bằng Excel 2013\r\nTăng hiệu suất công việc lên 5 lần.', 'tinhoc-nguyenquangvinh.jpg', '75', 'tinhoc-nguyenquangvinh.mp4', 5, 300000, NULL, NULL, 42, 2, 'Microsoft Excel ứng dụng rất nhiều trong đời sống, công việc. Khóa học này sẽ giúp bạn học chuyên sâu Microsoft Excel 2013 nâng cao giúp công việc quản lí của bạn dễ dàng hơn', NULL, NULL),
(33, 'Thành thạo Excel 2010 trong 3 giờ', 'Bạn gặp nhiều khó khăn trong việc quản lí số liệu, hay trong công việc văn phòng? Hãy chấm dứt tất cả những điều này ngay hôm nay bằng cách khởi động với Excel 2010.\r\n\r\nExcel 2010 chính là ứng dụng thích hợp và là người bạn đồng hành tốt nhất của nhân viên văn phòng, kế toán, những người thao tác nhiều với số liệu hay cả với sinh viên, học sinh để giúp họ giảm bớt thời gian trong việc quản lí dữ liệu một cách hiệu quả.\r\n\r\nChính vì thế, tôi đã cùng UNICA xây dựng khóa học \"Thành thạo Excel 2010 trong 03 giờ\". Với nội dung bài học được chia nhỏ theo từng tính năng kết hợp với phương pháp thực hành trực quan, tôi sẽ giúp các bạn: Nắm vững các tính năng cơ bản nhất của Excel 2010 với thời gian nhanh nhất để giúp bạn vận dụng thành thạo các hàm tính cơ bản vào công việc, bảo mật file excel, đồng thời quản lí tài liệu một cách hiệu quả.\r\n\r\n ', 'Thành thạo Excel 2010 từ cơ bản đến nâng cao\r\nLàm chủ các hàm tính và vận dụng hiệu quả vào công việc\r\nBảo vệ file excel của mình tránh khỏi việc chỉnh sửa hoặc ăn cắp thông tin\r\nVận dụng các kiến thức đơn giản nhưng hiệu quả trong công việc quản lý dữ diệu', 'tinhoc-lequanghai.jpg', '60', 'tinhoc-lequanghai.mp4', 5, 499000, NULL, NULL, 43, 2, 'Với 3 giờ với 30 bài học online với Unica giúp bạn nắm được từ cơ bản đến nâng cao Các tính năng, hàm cơ bản trong excel giúp việc quản lý, bảo mật hiệu quả', NULL, NULL),
(34, 'Chinh phục excel công sở', 'Excel là một công cụ văn phòng tuyệt vời và không thể thiếu, đặc biệt là với những bạn đang làm việc tại môi trường công sở. Trong Excel có rất nhiều tính năng hay mà không phải ai cũng biết. Những tính năng tưởng chừng rất đơn giản nhưng lại vô cùng quan trọng với những người thường xuyên làm việc với bảng tính Excel. Hãy đến với khóa học \"Chinh phục excel công sở\" của Thạc sĩ  Nguyễn Thành Đông\r\n\r\nKhóa học này sẽ giúp bạn\r\n\r\nKhóa học giải quyết những nhu cầu thực tế trong công việc văn phòng mà hầu như tất cả các thành viên trong công ty từ ban quản lý đến nhân viên các cấp đều cần thiết: Lập kế hoạch, sắp xếp công việc hiệu quả góp phần quản lý tối ưu thời gian làm việc. Phân tích, xử lý, định dạng, trình bày số liệu chuyên nghiệp và trên hết là nâng cao hiệu quả công việc với tốc độ siêu nhanh trên Microsoft Excel.\r\nGiúp bạn Sắp xếp, lên kế hoạch công việc nhanh chóng với ứng dụng được xây dựng ngay trên Microsoft Excel.\r\nXử lý, phân tích số liệu với những chức năng nâng cao như: Goal Seek, Solver, Scenario, Pivot Tables.\r\nĐịnh dạng bảng tính chuyên nghiệp, thu hút sự chú ý của người xem và đạt hiệu quả thuyết trình, báo cáo số liệu', 'Sắp xếp, lên kế hoạch công việc nhanh chóng với ứng dụng được xây dựng ngay trên Microsoft Excel.\r\nXử lý, phân tích số liệu với những chức năng nâng cao như: Goal Seek, Solver, Scenario, Pivot Tables.\r\nBứt phá tốc độ làm việc trên Microsoft Excel với hệ thống phím tắt đa dạng\r\nTrình bày số liệu nhanh chóng, chuyên nghiệp và khoa học nhất\r\nĐịnh dạng bảng tính chuyên nghiệp, thu hút sự chú ý của người xem và đạt hiệu quả thuyết trình, báo cáo số liệu.\r\nVà nhiều thủ thuật, tiện tích khác giúp cho công việc văn phòng trên Microsoft Excel trở nên sinh động và hấp dẫn hơn.', 'tinhoc-nguyenthanhdong.jpg', NULL, 'tinhoc-nguyenthanhdong.mp4', 5, 300000, NULL, NULL, 44, 2, 'Bạn gặp khó khăn vì chưa thành thạo Excel công sở. Khóa học này giúp bạn phân tích, xử lý, định dạng, trình bày số liệu chuyên nghiệp và đặc biệt là nâng cao hiệu quả công việc.', NULL, NULL),
(39, 'Guitar solo', NULL, NULL, 'meo-hoc-hop-am-guitar-500x282.jpg', NULL, 'banthikinhroi.mp4', NULL, NULL, NULL, NULL, 2, 6, NULL, '2019-08-17', '2019-08-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahocdadangki`
--

CREATE TABLE `khoahocdadangki` (
  `ma_khddk` int(11) NOT NULL,
  `email` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahocdadangki`
--

INSERT INTO `khoahocdadangki` (`ma_khddk`, `email`, `ma_kh`, `updated_at`, `created_at`) VALUES
(86, 'ducthinhlatao4s@gmail.com', 5, '2019-08-13', '2019-08-13'),
(87, 'ducthinhlatao4s@gmail.com', 16, '2019-08-13', '2019-08-13'),
(88, 'ngababa@gmail.com', 3, '2019-08-14', '2019-08-14'),
(92, 'ducthinhlatao4s@gmail.com', 3, '2019-08-17', '2019-08-17'),
(95, 'ducthinhlatao4s@gmail.com', 39, '2019-08-18', '2019-08-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaikh`
--

CREATE TABLE `loaikh` (
  `ma_loai` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaikh`
--

INSERT INTO `loaikh` (`ma_loai`, `ten`, `updated_at`, `created_at`) VALUES
(1, 'Ngoại ngữ', NULL, NULL),
(2, 'Tin học', NULL, NULL),
(3, 'Maketing', NULL, NULL),
(4, 'Thiết kế', NULL, NULL),
(5, 'Kinh doanh', NULL, NULL),
(6, 'Nghệ thuật', NULL, NULL),
(7, 'Nhiếp ảnh', NULL, NULL),
(8, 'Sức khỏe', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_31_045907_test', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quyen` int(1) NOT NULL DEFAULT 0,
  `ma_tinhthanh` int(2) DEFAULT 1,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_anh` char(255) COLLATE utf8mb4_unicode_ci DEFAULT 'macdinh.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `quyen`, `ma_tinhthanh`, `dia_chi`, `ngay_sinh`, `gioi_tinh`, `link_anh`) VALUES
(1, 'Nguyễn Văn Thịnh', 'ducthinhlatao4s@gmail.com', NULL, '$2y$10$kcFYtOVrwc21.KN4ci7k6O6xFfL2mSaXjpMYoYFcig3WhLPjrd7EK', NULL, '2019-08-12 14:27:13', '2019-08-17 22:36:48', '0384638890', 3, 33, 'Xã Phương Định', '17/8/1996', NULL, '1.37290276_479072615887633_7928218622906859520_n.jpg'),
(2, 'Mạc Thị Quỳnh Nga', 'ngababa@gmail.com', NULL, '$2y$10$G9HiH4KeSoN5Dlzdtdzz4..mmhiN5NgwoB0ey3axr5DrhdkR.ASLq', NULL, '2019-08-12 14:29:51', '2019-08-17 22:39:53', '0384638856', 1, 22, NULL, '17/8/1998', NULL, '2.66458070_2233623803614836_5796867237142855680_n.jpg'),
(6, 'Nguyen thanh huyen', 'huyen4s@gmail.com', NULL, '$2y$10$gmyHqL6b0JsfTAfpB3ja7u3CmnYHpW.1.LyD7geCLfb22z6sFkrRK', NULL, '2019-08-18 07:18:51', '2019-08-18 07:21:35', '0384638856', 0, 14, NULL, '17/8/1997', NULL, '6.10300521_849329235213920_7812852362855534761_n.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vietnam`
--

CREATE TABLE `vietnam` (
  `ma_tinhthanh` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vietnam`
--

INSERT INTO `vietnam` (`ma_tinhthanh`, `name`) VALUES
(1, 'Chọn tỉnh/thành'),
(2, 'An Giang'),
(3, 'Bà Rịa Vũng Tàu'),
(4, 'Bình Dương'),
(5, 'Bình Phước'),
(6, 'Bình Thuận'),
(7, 'Bình Định'),
(8, 'Bắc Giang'),
(9, 'Bắc Kạn'),
(10, 'Bắc Ninh'),
(11, 'Bến Tre'),
(12, 'Cao Bằng'),
(13, 'Cà Mau'),
(14, 'Cần Thơ'),
(15, 'Gia Lai'),
(16, 'Hà Giang'),
(17, 'Hà Nam'),
(18, 'Hà Nội'),
(19, 'Hà Tĩnh'),
(20, 'Hòa Bình'),
(21, 'Hưng Yên'),
(22, 'Hải Dương'),
(23, 'Hải Phòng'),
(24, 'Hồ Chí Minh'),
(25, 'Khánh Hòa'),
(26, 'Kiên Giang'),
(27, 'Kon Tum'),
(28, 'Lai Châu'),
(29, 'Long An'),
(30, 'Lào Cai'),
(31, 'Lâm Đồng'),
(32, 'Lạng Sơn'),
(33, 'Nam Định'),
(34, 'Nghệ An'),
(35, 'Ninh Bình'),
(36, 'Ninh Thuận'),
(37, 'Phú Thọ'),
(38, 'Phú Yên'),
(40, 'Quảng Nam'),
(41, 'Quảng Ngãi'),
(42, 'Quảng Ninh'),
(43, 'Quảng Trị'),
(44, 'Sơn La'),
(45, 'Thanh Hóa'),
(46, 'Thái Bình'),
(47, 'Thái Nguyên'),
(48, 'Thừa Thiên Huế'),
(49, 'Tiền Giang'),
(50, 'Trà Vinh'),
(51, 'Tuyên Quang'),
(52, 'Tây Ninh'),
(53, 'Vĩnh Long'),
(54, 'Vĩnh Phúc'),
(55, 'Yên Bái'),
(56, 'Đà Nẵng'),
(57, 'Đắk Lắk'),
(58, 'Đồng Nai'),
(59, 'Đồng Tháp'),
(60, 'Bạc Liêu'),
(61, 'Sóc Trăng'),
(62, 'Hậu Giang'),
(63, 'Đắk Nông'),
(2700, 'Điện Biên');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  ADD PRIMARY KEY (`ma_bh`),
  ADD KEY `fk_cua_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`ma_gv`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`ma_kh`),
  ADD KEY `fk_loai` (`ma_loai`),
  ADD KEY `fk_cua_gv` (`ma_gv`);

--
-- Chỉ mục cho bảng `khoahocdadangki`
--
ALTER TABLE `khoahocdadangki`
  ADD PRIMARY KEY (`ma_khddk`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `email` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `loaikh`
--
ALTER TABLE `loaikh`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `ma_tinhthanh` (`ma_tinhthanh`);

--
-- Chỉ mục cho bảng `vietnam`
--
ALTER TABLE `vietnam`
  ADD PRIMARY KEY (`ma_tinhthanh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  MODIFY `ma_bh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `ma_gv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `khoahocdadangki`
--
ALTER TABLE `khoahocdadangki`
  MODIFY `ma_khddk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vietnam`
--
ALTER TABLE `vietnam`
  MODIFY `ma_tinhthanh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2701;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  ADD CONSTRAINT `fk_cua_kh` FOREIGN KEY (`ma_kh`) REFERENCES `khoahoc` (`ma_kh`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `fk_cua_gv` FOREIGN KEY (`ma_gv`) REFERENCES `giaovien` (`ma_gv`),
  ADD CONSTRAINT `khoahoc_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loaikh` (`ma_loai`);

--
-- Các ràng buộc cho bảng `khoahocdadangki`
--
ALTER TABLE `khoahocdadangki`
  ADD CONSTRAINT `khoahocdadangki_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khoahoc` (`ma_kh`),
  ADD CONSTRAINT `khoahocdadangki_ibfk_2` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ma_tinhthanh`) REFERENCES `vietnam` (`ma_tinhthanh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
